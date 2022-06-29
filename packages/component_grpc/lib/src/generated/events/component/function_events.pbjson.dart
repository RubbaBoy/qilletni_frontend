///
//  Generated code. Do not modify.
//  source: events/component/function_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use functionCreateEventDescriptor instead')
const FunctionCreateEvent$json = const {
  '1': 'FunctionCreateEvent',
  '2': const [
    const {'1': 'create', '3': 1, '4': 1, '5': 11, '6': '.CreateEvent', '10': 'create'},
  ],
};

/// Descriptor for `FunctionCreateEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List functionCreateEventDescriptor = $convert.base64Decode('ChNGdW5jdGlvbkNyZWF0ZUV2ZW50EiQKBmNyZWF0ZRgBIAEoCzIMLkNyZWF0ZUV2ZW50UgZjcmVhdGU=');
@$core.Deprecated('Use functionChangeChildrenEventDescriptor instead')
const FunctionChangeChildrenEvent$json = const {
  '1': 'FunctionChangeChildrenEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'children', '3': 2, '4': 3, '5': 12, '10': 'children'},
  ],
};

/// Descriptor for `FunctionChangeChildrenEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List functionChangeChildrenEventDescriptor = $convert.base64Decode('ChtGdW5jdGlvbkNoYW5nZUNoaWxkcmVuRXZlbnQSJAoGbW9kaWZ5GAEgASgLMgwuTW9kaWZ5RXZlbnRSBm1vZGlmeRIaCghjaGlsZHJlbhgCIAMoDFIIY2hpbGRyZW4=');
@$core.Deprecated('Use functionNameChangeEventDescriptor instead')
const FunctionNameChangeEvent$json = const {
  '1': 'FunctionNameChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `FunctionNameChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List functionNameChangeEventDescriptor = $convert.base64Decode('ChdGdW5jdGlvbk5hbWVDaGFuZ2VFdmVudBIkCgZtb2RpZnkYASABKAsyDC5Nb2RpZnlFdmVudFIGbW9kaWZ5EhIKBG5hbWUYAiABKAlSBG5hbWU=');
