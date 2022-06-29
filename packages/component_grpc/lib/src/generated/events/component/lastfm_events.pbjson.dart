///
//  Generated code. Do not modify.
//  source: events/component/lastfm_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use lastFmCreateEventDescriptor instead')
const LastFmCreateEvent$json = const {
  '1': 'LastFmCreateEvent',
  '2': const [
    const {'1': 'create', '3': 1, '4': 1, '5': 11, '6': '.CreateEvent', '10': 'create'},
  ],
};

/// Descriptor for `LastFmCreateEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lastFmCreateEventDescriptor = $convert.base64Decode('ChFMYXN0Rm1DcmVhdGVFdmVudBIkCgZjcmVhdGUYASABKAsyDC5DcmVhdGVFdmVudFIGY3JlYXRl');
@$core.Deprecated('Use lastFmSequentialChangeEventDescriptor instead')
const LastFmSequentialChangeEvent$json = const {
  '1': 'LastFmSequentialChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'sequential', '3': 2, '4': 1, '5': 8, '10': 'sequential'},
  ],
};

/// Descriptor for `LastFmSequentialChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lastFmSequentialChangeEventDescriptor = $convert.base64Decode('ChtMYXN0Rm1TZXF1ZW50aWFsQ2hhbmdlRXZlbnQSJAoGbW9kaWZ5GAEgASgLMgwuTW9kaWZ5RXZlbnRSBm1vZGlmeRIeCgpzZXF1ZW50aWFsGAIgASgIUgpzZXF1ZW50aWFs');
@$core.Deprecated('Use lastFmLimitChangeEventDescriptor instead')
const LastFmLimitChangeEvent$json = const {
  '1': 'LastFmLimitChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'limit', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'limit', '17': true},
  ],
  '8': const [
    const {'1': '_limit'},
  ],
};

/// Descriptor for `LastFmLimitChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lastFmLimitChangeEventDescriptor = $convert.base64Decode('ChZMYXN0Rm1MaW1pdENoYW5nZUV2ZW50EiQKBm1vZGlmeRgBIAEoCzIMLk1vZGlmeUV2ZW50UgZtb2RpZnkSGQoFbGltaXQYAiABKAVIAFIFbGltaXSIAQFCCAoGX2xpbWl0');
@$core.Deprecated('Use lastFmTypeChangeEventDescriptor instead')
const LastFmTypeChangeEvent$json = const {
  '1': 'LastFmTypeChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'collection_type', '3': 2, '4': 1, '5': 14, '6': '.LastFmCollectionType', '10': 'collectionType'},
  ],
};

/// Descriptor for `LastFmTypeChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lastFmTypeChangeEventDescriptor = $convert.base64Decode('ChVMYXN0Rm1UeXBlQ2hhbmdlRXZlbnQSJAoGbW9kaWZ5GAEgASgLMgwuTW9kaWZ5RXZlbnRSBm1vZGlmeRI+Cg9jb2xsZWN0aW9uX3R5cGUYAiABKA4yFS5MYXN0Rm1Db2xsZWN0aW9uVHlwZVIOY29sbGVjdGlvblR5cGU=');
