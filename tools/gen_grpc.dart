import 'dart:io';
import 'package:path/path.dart' as p;

const header = '// Generated exports below, do not modify';
const individualHeader = '// Generated file, do not modify';
const fileTypes = <String>[
  'pb.dart',
  'pbenum.dart',
  'pbgrpc.dart',
  'pbjson.dart'
];

/// Args:
/// - Input directory
/// - Output directory
///
/// Example:
/// ```
/// dart tools/gen_grpc.dart protos lib/src/generated
/// ```
void main(List<String> args) {
  var input = Directory(args[0]).absolute;
  var output = Directory(args[1]).absolute;

  if (!input.existsSync()) {
    throw 'Input directory does not exist: $input';
  }

  output.createSync();
  var exportFiles = <ExportFile>[];
  processDir(input.absolute, input.absolute, p.normalize(output.absolute.path), exportFiles);

  if (args.length > 2) {
    var exportFile = File(args[2]).absolute;

    var allMainExportedFiles = <File>[];
    for (var exportFile in exportFiles) {
      var exportFileObj =
          File('${p.join(exportFile.parent.path, exportFile.basename)}.dart');
      exportFileObj.writeAsString(exportFile.buildFileContents());
      allMainExportedFiles.add(exportFileObj);
    }

    if (!exportFile.existsSync()) {
      throw 'Export file does not exist: $exportFile';
    }

    var lines = exportFile.readAsLinesSync();
    var headerIndex = lines.indexOf(header);

    if (headerIndex == -1) {
      throw 'Export file does not contain header "$header"';
    }

    var exports = allMainExportedFiles
        .map((file) => p.relative(file.path, from: exportFile.parent.path).replaceAll('\\', '/'))
        .map((path) => "export '$path';");

    var beforeHeader = [...lines.sublist(0, headerIndex + 1), '', ...exports, ''];

    exportFile.writeAsStringSync(beforeHeader.join('\n'));
  }
}

void processDir(Directory input, Directory protoPath, String normalizedOut,
    List<ExportFile> files) {
  print('Traversing: ${input.path} output: $normalizedOut');

  for (var item in input.listSync()) {
    if (item is File) {
      var res = Process.runSync('protoc', ['--dart_out', 'grpc:$normalizedOut', '--proto_path', protoPath.path, item.path]);

      var protoFile = p.relative(item.path, from: protoPath.path);
      var protoParent = File(p.join(normalizedOut, protoFile)).parent;

      files.add(ExportFile(
          protoParent,
          p.basenameWithoutExtension(protoFile),
          getGeneratedFiles(
              protoParent, p.basenameWithoutExtension(item.path))));

      printIfContent(res.stdout);
      printIfContent(res.stderr);
    } else if (item is Directory) {
      processDir(item, protoPath, normalizedOut, files);
    }
  }
}

List<File> getGeneratedFiles(Directory directory, String name) {
  return directory.listSync().whereType<File>().where((file) {
    var basenameWithoutExtension = getNameWithoutExtension(file);
    return basenameWithoutExtension == name;
  }).where((file) {
    var ext = getFullExtension(file);
    return fileTypes.contains(ext);
  }).toList();
}

String getNameWithoutExtension(File file) {
  var basename = p.basename(file.path);
  return basename.substring(0, basename.indexOf('.'));
}

String getFullExtension(File file) {
  var basename = p.basename(file.path);
  return basename.substring(basename.indexOf('.') + 1);
}

void printIfContent(dynamic out) {
  if (out is! String) return;
  if (out.isNotEmpty) print(out.trim());
}

class ExportFile {
  final Directory parent;
  final String basename;
  final List<File> files;

  ExportFile(this.parent, this.basename, this.files);

  String buildFileContents() {
    return [
      '$individualHeader\n',
      ...files.map((e) => p.basename(e.path)).map((e) => "export '$e';"),
      ''
    ].join('\n');
  }

  @override
  String toString() {
    return 'ExportFile{parent: $parent, basename: $basename, files: $files}';
  }
}
