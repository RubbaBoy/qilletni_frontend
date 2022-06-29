///
//  Generated code. Do not modify.
//  source: events/component/general_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use deleteEventDescriptor instead')
const DeleteEvent$json = const {
  '1': 'DeleteEvent',
  '2': const [
    const {'1': 'component_id', '3': 1, '4': 1, '5': 9, '10': 'componentId'},
  ],
};

/// Descriptor for `DeleteEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteEventDescriptor = $convert.base64Decode('CgtEZWxldGVFdmVudBIhCgxjb21wb25lbnRfaWQYASABKAlSC2NvbXBvbmVudElk');
@$core.Deprecated('Use recolorEventDescriptor instead')
const RecolorEvent$json = const {
  '1': 'RecolorEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'color', '3': 2, '4': 1, '5': 5, '10': 'color'},
  ],
};

/// Descriptor for `RecolorEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recolorEventDescriptor = $convert.base64Decode('CgxSZWNvbG9yRXZlbnQSJAoGbW9kaWZ5GAEgASgLMgwuTW9kaWZ5RXZlbnRSBm1vZGlmeRIUCgVjb2xvchgCIAEoBVIFY29sb3I=');
