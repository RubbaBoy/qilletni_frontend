///
//  Generated code. Do not modify.
//  source: events/component/raw_collection_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use rawCollectionCreateEventDescriptor instead')
const RawCollectionCreateEvent$json = const {
  '1': 'RawCollectionCreateEvent',
  '2': const [
    const {'1': 'create', '3': 1, '4': 1, '5': 11, '6': '.CreateEvent', '10': 'create'},
  ],
};

/// Descriptor for `RawCollectionCreateEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rawCollectionCreateEventDescriptor = $convert.base64Decode('ChhSYXdDb2xsZWN0aW9uQ3JlYXRlRXZlbnQSJAoGY3JlYXRlGAEgASgLMgwuQ3JlYXRlRXZlbnRSBmNyZWF0ZQ==');
@$core.Deprecated('Use rawCollectionSequentialChangeEventDescriptor instead')
const RawCollectionSequentialChangeEvent$json = const {
  '1': 'RawCollectionSequentialChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'sequential', '3': 2, '4': 1, '5': 8, '10': 'sequential'},
  ],
};

/// Descriptor for `RawCollectionSequentialChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rawCollectionSequentialChangeEventDescriptor = $convert.base64Decode('CiJSYXdDb2xsZWN0aW9uU2VxdWVudGlhbENoYW5nZUV2ZW50EiQKBm1vZGlmeRgBIAEoCzIMLk1vZGlmeUV2ZW50UgZtb2RpZnkSHgoKc2VxdWVudGlhbBgCIAEoCFIKc2VxdWVudGlhbA==');
@$core.Deprecated('Use rawCollectionSongsChangeEventDescriptor instead')
const RawCollectionSongsChangeEvent$json = const {
  '1': 'RawCollectionSongsChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'song_ids', '3': 2, '4': 3, '5': 9, '10': 'songIds'},
  ],
};

/// Descriptor for `RawCollectionSongsChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rawCollectionSongsChangeEventDescriptor = $convert.base64Decode('Ch1SYXdDb2xsZWN0aW9uU29uZ3NDaGFuZ2VFdmVudBIkCgZtb2RpZnkYASABKAsyDC5Nb2RpZnlFdmVudFIGbW9kaWZ5EhkKCHNvbmdfaWRzGAIgAygJUgdzb25nSWRz');
