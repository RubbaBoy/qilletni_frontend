///
//  Generated code. Do not modify.
//  source: events/board_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use boardCreateEventDescriptor instead')
const BoardCreateEvent$json = const {
  '1': 'BoardCreateEvent',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `BoardCreateEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boardCreateEventDescriptor = $convert.base64Decode('ChBCb2FyZENyZWF0ZUV2ZW50EhIKBG5hbWUYASABKAlSBG5hbWU=');
@$core.Deprecated('Use boardCreateResponseDescriptor instead')
const BoardCreateResponse$json = const {
  '1': 'BoardCreateResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ResponseError', '9': 0, '10': 'error', '17': true},
    const {'1': 'board_id', '3': 2, '4': 1, '5': 9, '10': 'boardId'},
  ],
  '8': const [
    const {'1': '_error'},
  ],
};

/// Descriptor for `BoardCreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boardCreateResponseDescriptor = $convert.base64Decode('ChNCb2FyZENyZWF0ZVJlc3BvbnNlEikKBWVycm9yGAEgASgLMg4uUmVzcG9uc2VFcnJvckgAUgVlcnJvcogBARIZCghib2FyZF9pZBgCIAEoCVIHYm9hcmRJZEIICgZfZXJyb3I=');
@$core.Deprecated('Use boardModifyEventDescriptor instead')
const BoardModifyEvent$json = const {
  '1': 'BoardModifyEvent',
  '2': const [
    const {'1': 'board_id', '3': 1, '4': 1, '5': 9, '10': 'boardId'},
  ],
};

/// Descriptor for `BoardModifyEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boardModifyEventDescriptor = $convert.base64Decode('ChBCb2FyZE1vZGlmeUV2ZW50EhkKCGJvYXJkX2lkGAEgASgJUgdib2FyZElk');
@$core.Deprecated('Use boardNameChangeEventDescriptor instead')
const BoardNameChangeEvent$json = const {
  '1': 'BoardNameChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.BoardModifyEvent', '10': 'modify'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `BoardNameChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boardNameChangeEventDescriptor = $convert.base64Decode('ChRCb2FyZE5hbWVDaGFuZ2VFdmVudBIpCgZtb2RpZnkYASABKAsyES5Cb2FyZE1vZGlmeUV2ZW50UgZtb2RpZnkSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use boardsRequestEventDescriptor instead')
const BoardsRequestEvent$json = const {
  '1': 'BoardsRequestEvent',
};

/// Descriptor for `BoardsRequestEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boardsRequestEventDescriptor = $convert.base64Decode('ChJCb2FyZHNSZXF1ZXN0RXZlbnQ=');
@$core.Deprecated('Use boardsRequestResponseDescriptor instead')
const BoardsRequestResponse$json = const {
  '1': 'BoardsRequestResponse',
  '2': const [
    const {'1': 'boards', '3': 1, '4': 3, '5': 11, '6': '.Board', '10': 'boards'},
  ],
};

/// Descriptor for `BoardsRequestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boardsRequestResponseDescriptor = $convert.base64Decode('ChVCb2FyZHNSZXF1ZXN0UmVzcG9uc2USHgoGYm9hcmRzGAEgAygLMgYuQm9hcmRSBmJvYXJkcw==');
