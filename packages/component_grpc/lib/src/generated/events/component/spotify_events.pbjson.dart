///
//  Generated code. Do not modify.
//  source: events/component/spotify_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use spotifyCreateEventDescriptor instead')
const SpotifyCreateEvent$json = const {
  '1': 'SpotifyCreateEvent',
  '2': const [
    const {'1': 'create', '3': 1, '4': 1, '5': 11, '6': '.CreateEvent', '10': 'create'},
  ],
};

/// Descriptor for `SpotifyCreateEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifyCreateEventDescriptor = $convert.base64Decode('ChJTcG90aWZ5Q3JlYXRlRXZlbnQSJAoGY3JlYXRlGAEgASgLMgwuQ3JlYXRlRXZlbnRSBmNyZWF0ZQ==');
@$core.Deprecated('Use spotifySequentialChangeEventDescriptor instead')
const SpotifySequentialChangeEvent$json = const {
  '1': 'SpotifySequentialChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'sequential', '3': 2, '4': 1, '5': 8, '10': 'sequential'},
  ],
};

/// Descriptor for `SpotifySequentialChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifySequentialChangeEventDescriptor = $convert.base64Decode('ChxTcG90aWZ5U2VxdWVudGlhbENoYW5nZUV2ZW50EiQKBm1vZGlmeRgBIAEoCzIMLk1vZGlmeUV2ZW50UgZtb2RpZnkSHgoKc2VxdWVudGlhbBgCIAEoCFIKc2VxdWVudGlhbA==');
@$core.Deprecated('Use spotifyLimitChangeEventDescriptor instead')
const SpotifyLimitChangeEvent$json = const {
  '1': 'SpotifyLimitChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'limit', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'limit', '17': true},
  ],
  '8': const [
    const {'1': '_limit'},
  ],
};

/// Descriptor for `SpotifyLimitChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifyLimitChangeEventDescriptor = $convert.base64Decode('ChdTcG90aWZ5TGltaXRDaGFuZ2VFdmVudBIkCgZtb2RpZnkYASABKAsyDC5Nb2RpZnlFdmVudFIGbW9kaWZ5EhkKBWxpbWl0GAIgASgFSABSBWxpbWl0iAEBQggKBl9saW1pdA==');
@$core.Deprecated('Use spotifyTypeChangeEventDescriptor instead')
const SpotifyTypeChangeEvent$json = const {
  '1': 'SpotifyTypeChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'collection_type', '3': 2, '4': 1, '5': 14, '6': '.SpotifyCollectionType', '10': 'collectionType'},
  ],
};

/// Descriptor for `SpotifyTypeChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifyTypeChangeEventDescriptor = $convert.base64Decode('ChZTcG90aWZ5VHlwZUNoYW5nZUV2ZW50EiQKBm1vZGlmeRgBIAEoCzIMLk1vZGlmeUV2ZW50UgZtb2RpZnkSPwoPY29sbGVjdGlvbl90eXBlGAIgASgOMhYuU3BvdGlmeUNvbGxlY3Rpb25UeXBlUg5jb2xsZWN0aW9uVHlwZQ==');
@$core.Deprecated('Use spotifyDataChangeEventDescriptor instead')
const SpotifyDataChangeEvent$json = const {
  '1': 'SpotifyDataChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'lookup_data', '3': 2, '4': 1, '5': 9, '10': 'lookupData'},
  ],
};

/// Descriptor for `SpotifyDataChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifyDataChangeEventDescriptor = $convert.base64Decode('ChZTcG90aWZ5RGF0YUNoYW5nZUV2ZW50EiQKBm1vZGlmeRgBIAEoCzIMLk1vZGlmeUV2ZW50UgZtb2RpZnkSHwoLbG9va3VwX2RhdGEYAiABKAlSCmxvb2t1cERhdGE=');
@$core.Deprecated('Use spotifyYearRangeChangeEventDescriptor instead')
const SpotifyYearRangeChangeEvent$json = const {
  '1': 'SpotifyYearRangeChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'year_range', '3': 2, '4': 1, '5': 11, '6': '.YearRange', '9': 0, '10': 'yearRange', '17': true},
  ],
  '8': const [
    const {'1': '_year_range'},
  ],
};

/// Descriptor for `SpotifyYearRangeChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifyYearRangeChangeEventDescriptor = $convert.base64Decode('ChtTcG90aWZ5WWVhclJhbmdlQ2hhbmdlRXZlbnQSJAoGbW9kaWZ5GAEgASgLMgwuTW9kaWZ5RXZlbnRSBm1vZGlmeRIuCgp5ZWFyX3JhbmdlGAIgASgLMgouWWVhclJhbmdlSABSCXllYXJSYW5nZYgBAUINCgtfeWVhcl9yYW5nZQ==');
@$core.Deprecated('Use spotifyYearChangeEventDescriptor instead')
const SpotifyYearChangeEvent$json = const {
  '1': 'SpotifyYearChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'year_range', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'yearRange', '17': true},
  ],
  '8': const [
    const {'1': '_year_range'},
  ],
};

/// Descriptor for `SpotifyYearChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifyYearChangeEventDescriptor = $convert.base64Decode('ChZTcG90aWZ5WWVhckNoYW5nZUV2ZW50EiQKBm1vZGlmeRgBIAEoCzIMLk1vZGlmeUV2ZW50UgZtb2RpZnkSIgoKeWVhcl9yYW5nZRgCIAEoBUgAUgl5ZWFyUmFuZ2WIAQFCDQoLX3llYXJfcmFuZ2U=');
@$core.Deprecated('Use spotifyGenreChangeEventDescriptor instead')
const SpotifyGenreChangeEvent$json = const {
  '1': 'SpotifyGenreChangeEvent',
  '2': const [
    const {'1': 'modify', '3': 1, '4': 1, '5': 11, '6': '.ModifyEvent', '10': 'modify'},
    const {'1': 'genre', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'genre', '17': true},
  ],
  '8': const [
    const {'1': '_genre'},
  ],
};

/// Descriptor for `SpotifyGenreChangeEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifyGenreChangeEventDescriptor = $convert.base64Decode('ChdTcG90aWZ5R2VucmVDaGFuZ2VFdmVudBIkCgZtb2RpZnkYASABKAsyDC5Nb2RpZnlFdmVudFIGbW9kaWZ5EhkKBWdlbnJlGAIgASgJSABSBWdlbnJliAEBQggKBl9nZW5yZQ==');
