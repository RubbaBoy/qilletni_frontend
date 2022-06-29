///
//  Generated code. Do not modify.
//  source: events/component/component_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use helloRequestDescriptor instead')
const HelloRequest$json = const {
  '1': 'HelloRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
  '3': const [HelloRequest_Inner$json],
};

@$core.Deprecated('Use helloRequestDescriptor instead')
const HelloRequest_Inner$json = const {
  '1': 'Inner',
  '2': const [
    const {'1': 'age', '3': 2, '4': 1, '5': 5, '10': 'age'},
  ],
};

/// Descriptor for `HelloRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloRequestDescriptor = $convert.base64Decode('CgxIZWxsb1JlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRoZCgVJbm5lchIQCgNhZ2UYAiABKAVSA2FnZQ==');
@$core.Deprecated('Use helloReplyDescriptor instead')
const HelloReply$json = const {
  '1': 'HelloReply',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `HelloReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloReplyDescriptor = $convert.base64Decode('CgpIZWxsb1JlcGx5EhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2U=');
@$core.Deprecated('Use responseErrorDescriptor instead')
const ResponseError$json = const {
  '1': 'ResponseError',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'code', '3': 2, '4': 1, '5': 5, '10': 'code'},
  ],
};

/// Descriptor for `ResponseError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseErrorDescriptor = $convert.base64Decode('Cg1SZXNwb25zZUVycm9yEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2USEgoEY29kZRgCIAEoBVIEY29kZQ==');
@$core.Deprecated('Use emptyResponseDescriptor instead')
const EmptyResponse$json = const {
  '1': 'EmptyResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ResponseError', '9': 0, '10': 'error', '17': true},
  ],
  '8': const [
    const {'1': '_error'},
  ],
};

/// Descriptor for `EmptyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyResponseDescriptor = $convert.base64Decode('Cg1FbXB0eVJlc3BvbnNlEikKBWVycm9yGAEgASgLMg4uUmVzcG9uc2VFcnJvckgAUgVlcnJvcogBAUIICgZfZXJyb3I=');
@$core.Deprecated('Use createComponentResponseDescriptor instead')
const CreateComponentResponse$json = const {
  '1': 'CreateComponentResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ResponseError', '9': 0, '10': 'error', '17': true},
    const {'1': 'component_id', '3': 2, '4': 1, '5': 9, '10': 'componentId'},
  ],
  '8': const [
    const {'1': '_error'},
  ],
};

/// Descriptor for `CreateComponentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createComponentResponseDescriptor = $convert.base64Decode('ChdDcmVhdGVDb21wb25lbnRSZXNwb25zZRIpCgVlcnJvchgBIAEoCzIOLlJlc3BvbnNlRXJyb3JIAFIFZXJyb3KIAQESIQoMY29tcG9uZW50X2lkGAIgASgJUgtjb21wb25lbnRJZEIICgZfZXJyb3I=');
@$core.Deprecated('Use modifyEventDescriptor instead')
const ModifyEvent$json = const {
  '1': 'ModifyEvent',
  '2': const [
    const {'1': 'component_id', '3': 1, '4': 1, '5': 9, '10': 'componentId'},
  ],
};

/// Descriptor for `ModifyEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyEventDescriptor = $convert.base64Decode('CgtNb2RpZnlFdmVudBIhCgxjb21wb25lbnRfaWQYASABKAlSC2NvbXBvbmVudElk');
@$core.Deprecated('Use createEventDescriptor instead')
const CreateEvent$json = const {
  '1': 'CreateEvent',
  '2': const [
    const {'1': 'board_id', '3': 1, '4': 1, '5': 9, '10': 'boardId'},
  ],
};

/// Descriptor for `CreateEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createEventDescriptor = $convert.base64Decode('CgtDcmVhdGVFdmVudBIZCghib2FyZF9pZBgBIAEoCVIHYm9hcmRJZA==');
