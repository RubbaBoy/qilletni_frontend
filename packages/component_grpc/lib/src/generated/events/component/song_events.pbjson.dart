///
//  Generated code. Do not modify.
//  source: events/component/song_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use songCreateEventDescriptor instead')
const SongCreateEvent$json = const {
  '1': 'SongCreateEvent',
  '2': const [
    const {'1': 'create', '3': 1, '4': 1, '5': 11, '6': '.CreateEvent', '10': 'create'},
  ],
};

/// Descriptor for `SongCreateEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List songCreateEventDescriptor = $convert.base64Decode('Cg9Tb25nQ3JlYXRlRXZlbnQSJAoGY3JlYXRlGAEgASgLMgwuQ3JlYXRlRXZlbnRSBmNyZWF0ZQ==');
@$core.Deprecated('Use songChangeEventDescriptor instead')
const SongChangeEvent$json = const {
  '1': 'SongChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'song_id', '3': 2, '4': 1, '5': 9, '10': 'songId'},
  ],
};

/// Descriptor for `SongChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List songChangeEventDescriptor = $convert.base64Decode('Cg9Tb25nQ2hhbmdlRXZlbnQSJAoGbW9kaWZ5GAEgASgLMgwuTW9kaWZ5RXZlbnRSBm1vZGlmeRIXCgdzb25nX2lkGAIgASgJUgZzb25nSWQ=');
