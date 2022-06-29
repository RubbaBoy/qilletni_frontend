///
//  Generated code. Do not modify.
//  source: events/component/for_loop_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use forLoopCreateEventDescriptor instead')
const ForLoopCreateEvent$json = const {
  '1': 'ForLoopCreateEvent',
  '2': const [
    const {'1': 'create', '3': 1, '4': 1, '5': 11, '6': '.CreateEvent', '10': 'create'},
  ],
};

/// Descriptor for `ForLoopCreateEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forLoopCreateEventDescriptor = $convert.base64Decode('ChJGb3JMb29wQ3JlYXRlRXZlbnQSJAoGY3JlYXRlGAEgASgLMgwuQ3JlYXRlRXZlbnRSBmNyZWF0ZQ==');
@$core.Deprecated('Use forLoopChildrenChangeEventDescriptor instead')
const ForLoopChildrenChangeEvent$json = const {
  '1': 'ForLoopChildrenChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'children', '3': 2, '4': 3, '5': 12, '10': 'children'},
  ],
};

/// Descriptor for `ForLoopChildrenChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forLoopChildrenChangeEventDescriptor = $convert.base64Decode('ChpGb3JMb29wQ2hpbGRyZW5DaGFuZ2VFdmVudBIkCgZtb2RpZnkYASABKAsyDC5Nb2RpZnlFdmVudFIGbW9kaWZ5EhoKCGNoaWxkcmVuGAIgAygMUghjaGlsZHJlbg==');
@$core.Deprecated('Use forLoopIterationsChangeEventDescriptor instead')
const ForLoopIterationsChangeEvent$json = const {
  '1': 'ForLoopIterationsChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'iterations', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'iterations', '17': true},
  ],
  '8': const [
    const {'1': '_iterations'},
  ],
};

/// Descriptor for `ForLoopIterationsChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forLoopIterationsChangeEventDescriptor = $convert.base64Decode('ChxGb3JMb29wSXRlcmF0aW9uc0NoYW5nZUV2ZW50EiQKBm1vZGlmeRgBIAEoCzIMLk1vZGlmeUV2ZW50UgZtb2RpZnkSIwoKaXRlcmF0aW9ucxgCIAEoBUgAUgppdGVyYXRpb25ziAEBQg0KC19pdGVyYXRpb25z');
@$core.Deprecated('Use forLoopDurationChangeEventDescriptor instead')
const ForLoopDurationChangeEvent$json = const {
  '1': 'ForLoopDurationChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'duration', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'duration', '17': true},
  ],
  '8': const [
    const {'1': '_duration'},
  ],
};

/// Descriptor for `ForLoopDurationChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forLoopDurationChangeEventDescriptor = $convert.base64Decode('ChpGb3JMb29wRHVyYXRpb25DaGFuZ2VFdmVudBIkCgZtb2RpZnkYASABKAsyDC5Nb2RpZnlFdmVudFIGbW9kaWZ5Eh8KCGR1cmF0aW9uGAIgASgFSABSCGR1cmF0aW9uiAEBQgsKCV9kdXJhdGlvbg==');
@$core.Deprecated('Use forLoopAbsTimeChangeEventDescriptor instead')
const ForLoopAbsTimeChangeEvent$json = const {
  '1': 'ForLoopAbsTimeChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'abs_time', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'absTime', '17': true},
  ],
  '8': const [
    const {'1': '_abs_time'},
  ],
};

/// Descriptor for `ForLoopAbsTimeChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forLoopAbsTimeChangeEventDescriptor = $convert.base64Decode('ChlGb3JMb29wQWJzVGltZUNoYW5nZUV2ZW50EiQKBm1vZGlmeRgBIAEoCzIMLk1vZGlmeUV2ZW50UgZtb2RpZnkSHgoIYWJzX3RpbWUYAiABKANIAFIHYWJzVGltZYgBAUILCglfYWJzX3RpbWU=');
