import 'package:protobuf/protobuf.dart';

T copyWithTag<T extends GeneratedMessage>(T message, String fieldName,
    dynamic value) {
  final tagNumber = message.getTagNumber(fieldName);

  if (tagNumber == null) {
    throw 'Tag number not found for field "$fieldName"';
  }

  return message.rebuild((modifiable) => modifiable.setField(tagNumber, value));
}

T copyWithRepeatedTag<T extends GeneratedMessage, E>(T message, String fieldName,
    List<E> values) {
  final tagNumber = message.getTagNumber(fieldName);

  if (tagNumber == null) {
    throw 'Tag number not found for field "$fieldName"';
  }

  return message.rebuild((modifiable) {
    var got = message.getField(tagNumber) as List<E>;

    got.clear();
  });
}
