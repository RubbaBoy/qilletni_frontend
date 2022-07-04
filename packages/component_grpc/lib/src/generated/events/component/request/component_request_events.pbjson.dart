///
//  Generated code. Do not modify.
//  source: events/component/request/component_request_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use structureRequestEventDescriptor instead')
const StructureRequestEvent$json = const {
  '1': 'StructureRequestEvent',
  '2': const [
    const {'1': 'board_id', '3': 1, '4': 1, '5': 9, '10': 'boardId'},
  ],
};

/// Descriptor for `StructureRequestEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List structureRequestEventDescriptor = $convert.base64Decode('ChVTdHJ1Y3R1cmVSZXF1ZXN0RXZlbnQSGQoIYm9hcmRfaWQYASABKAlSB2JvYXJkSWQ=');
@$core.Deprecated('Use functionRequestEventDescriptor instead')
const FunctionRequestEvent$json = const {
  '1': 'FunctionRequestEvent',
  '2': const [
    const {'1': 'component_id', '3': 1, '4': 1, '5': 9, '10': 'componentId'},
  ],
};

/// Descriptor for `FunctionRequestEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List functionRequestEventDescriptor = $convert.base64Decode('ChRGdW5jdGlvblJlcXVlc3RFdmVudBIhCgxjb21wb25lbnRfaWQYASABKAlSC2NvbXBvbmVudElk');
@$core.Deprecated('Use structureResponseDescriptor instead')
const StructureResponse$json = const {
  '1': 'StructureResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ResponseError', '9': 0, '10': 'error', '17': true},
    const {'1': 'components', '3': 2, '4': 3, '5': 11, '6': '.ComponentResponse', '10': 'components'},
  ],
  '8': const [
    const {'1': '_error'},
  ],
};

/// Descriptor for `StructureResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List structureResponseDescriptor = $convert.base64Decode('ChFTdHJ1Y3R1cmVSZXNwb25zZRIpCgVlcnJvchgBIAEoCzIOLlJlc3BvbnNlRXJyb3JIAFIFZXJyb3KIAQESMgoKY29tcG9uZW50cxgCIAMoCzISLkNvbXBvbmVudFJlc3BvbnNlUgpjb21wb25lbnRzQggKBl9lcnJvcg==');
@$core.Deprecated('Use functionResponseDescriptor instead')
const FunctionResponse$json = const {
  '1': 'FunctionResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ResponseError', '9': 0, '10': 'error', '17': true},
    const {'1': 'component', '3': 2, '4': 1, '5': 11, '6': '.ComponentResponse', '10': 'component'},
  ],
  '8': const [
    const {'1': '_error'},
  ],
};

/// Descriptor for `FunctionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List functionResponseDescriptor = $convert.base64Decode('ChBGdW5jdGlvblJlc3BvbnNlEikKBWVycm9yGAEgASgLMg4uUmVzcG9uc2VFcnJvckgAUgVlcnJvcogBARIwCgljb21wb25lbnQYAiABKAsyEi5Db21wb25lbnRSZXNwb25zZVIJY29tcG9uZW50QggKBl9lcnJvcg==');
@$core.Deprecated('Use componentResponseDescriptor instead')
const ComponentResponse$json = const {
  '1': 'ComponentResponse',
  '2': const [
    const {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.ComponentBase', '10': 'base'},
    const {'1': 'song', '3': 2, '4': 1, '5': 11, '6': '.SongComponentResponse', '9': 0, '10': 'song'},
    const {'1': 'for_loop', '3': 3, '4': 1, '5': 11, '6': '.ForLoopComponentResponse', '9': 0, '10': 'forLoop'},
    const {'1': 'function_component', '3': 4, '4': 1, '5': 11, '6': '.FunctionComponentResponse', '9': 0, '10': 'functionComponent'},
    const {'1': 'raw_collection', '3': 5, '4': 1, '5': 11, '6': '.RawCollectionComponentResponse', '9': 0, '10': 'rawCollection'},
    const {'1': 'last_fm_collection', '3': 6, '4': 1, '5': 11, '6': '.LastFmCollectionComponentResponse', '9': 0, '10': 'lastFmCollection'},
    const {'1': 'spotify_collection', '3': 7, '4': 1, '5': 11, '6': '.SpotifyCollectionComponentResponse', '9': 0, '10': 'spotifyCollection'},
  ],
  '8': const [
    const {'1': 'content'},
  ],
};

/// Descriptor for `ComponentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentResponseDescriptor = $convert.base64Decode('ChFDb21wb25lbnRSZXNwb25zZRIiCgRiYXNlGAEgASgLMg4uQ29tcG9uZW50QmFzZVIEYmFzZRIsCgRzb25nGAIgASgLMhYuU29uZ0NvbXBvbmVudFJlc3BvbnNlSABSBHNvbmcSNgoIZm9yX2xvb3AYAyABKAsyGS5Gb3JMb29wQ29tcG9uZW50UmVzcG9uc2VIAFIHZm9yTG9vcBJLChJmdW5jdGlvbl9jb21wb25lbnQYBCABKAsyGi5GdW5jdGlvbkNvbXBvbmVudFJlc3BvbnNlSABSEWZ1bmN0aW9uQ29tcG9uZW50EkgKDnJhd19jb2xsZWN0aW9uGAUgASgLMh8uUmF3Q29sbGVjdGlvbkNvbXBvbmVudFJlc3BvbnNlSABSDXJhd0NvbGxlY3Rpb24SUgoSbGFzdF9mbV9jb2xsZWN0aW9uGAYgASgLMiIuTGFzdEZtQ29sbGVjdGlvbkNvbXBvbmVudFJlc3BvbnNlSABSEGxhc3RGbUNvbGxlY3Rpb24SVAoSc3BvdGlmeV9jb2xsZWN0aW9uGAcgASgLMiMuU3BvdGlmeUNvbGxlY3Rpb25Db21wb25lbnRSZXNwb25zZUgAUhFzcG90aWZ5Q29sbGVjdGlvbkIJCgdjb250ZW50');
@$core.Deprecated('Use componentBaseDescriptor instead')
const ComponentBase$json = const {
  '1': 'ComponentBase',
  '2': const [
    const {'1': 'component_id', '3': 1, '4': 1, '5': 9, '10': 'componentId'},
    const {'1': 'color', '3': 2, '4': 1, '5': 5, '10': 'color'},
  ],
};

/// Descriptor for `ComponentBase`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentBaseDescriptor = $convert.base64Decode('Cg1Db21wb25lbnRCYXNlEiEKDGNvbXBvbmVudF9pZBgBIAEoCVILY29tcG9uZW50SWQSFAoFY29sb3IYAiABKAVSBWNvbG9y');
@$core.Deprecated('Use songComponentResponseDescriptor instead')
const SongComponentResponse$json = const {
  '1': 'SongComponentResponse',
  '2': const [
    const {'1': 'song', '3': 1, '4': 1, '5': 11, '6': '.Song', '10': 'song'},
  ],
};

/// Descriptor for `SongComponentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List songComponentResponseDescriptor = $convert.base64Decode('ChVTb25nQ29tcG9uZW50UmVzcG9uc2USGQoEc29uZxgBIAEoCzIFLlNvbmdSBHNvbmc=');
@$core.Deprecated('Use forLoopComponentResponseDescriptor instead')
const ForLoopComponentResponse$json = const {
  '1': 'ForLoopComponentResponse',
  '2': const [
    const {'1': 'children', '3': 1, '4': 3, '5': 11, '6': '.ComponentResponse', '10': 'children'},
    const {'1': 'loop_strategy', '3': 2, '4': 1, '5': 14, '6': '.LoopStrategy', '10': 'loopStrategy'},
    const {'1': 'iterations', '3': 3, '4': 1, '5': 5, '9': 0, '10': 'iterations', '17': true},
    const {'1': 'duration', '3': 4, '4': 1, '5': 5, '9': 1, '10': 'duration', '17': true},
    const {'1': 'absTime', '3': 5, '4': 1, '5': 3, '9': 2, '10': 'absTime', '17': true},
  ],
  '8': const [
    const {'1': '_iterations'},
    const {'1': '_duration'},
    const {'1': '_absTime'},
  ],
};

/// Descriptor for `ForLoopComponentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forLoopComponentResponseDescriptor = $convert.base64Decode('ChhGb3JMb29wQ29tcG9uZW50UmVzcG9uc2USLgoIY2hpbGRyZW4YASADKAsyEi5Db21wb25lbnRSZXNwb25zZVIIY2hpbGRyZW4SMgoNbG9vcF9zdHJhdGVneRgCIAEoDjINLkxvb3BTdHJhdGVneVIMbG9vcFN0cmF0ZWd5EiMKCml0ZXJhdGlvbnMYAyABKAVIAFIKaXRlcmF0aW9uc4gBARIfCghkdXJhdGlvbhgEIAEoBUgBUghkdXJhdGlvbogBARIdCgdhYnNUaW1lGAUgASgDSAJSB2Fic1RpbWWIAQFCDQoLX2l0ZXJhdGlvbnNCCwoJX2R1cmF0aW9uQgoKCF9hYnNUaW1l');
@$core.Deprecated('Use functionComponentResponseDescriptor instead')
const FunctionComponentResponse$json = const {
  '1': 'FunctionComponentResponse',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'children', '3': 2, '4': 3, '5': 11, '6': '.ComponentResponse', '10': 'children'},
  ],
};

/// Descriptor for `FunctionComponentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List functionComponentResponseDescriptor = $convert.base64Decode('ChlGdW5jdGlvbkNvbXBvbmVudFJlc3BvbnNlEhIKBG5hbWUYASABKAlSBG5hbWUSLgoIY2hpbGRyZW4YAiADKAsyEi5Db21wb25lbnRSZXNwb25zZVIIY2hpbGRyZW4=');
@$core.Deprecated('Use rawCollectionComponentResponseDescriptor instead')
const RawCollectionComponentResponse$json = const {
  '1': 'RawCollectionComponentResponse',
  '2': const [
    const {'1': 'sequential', '3': 1, '4': 1, '5': 8, '10': 'sequential'},
    const {'1': 'songs', '3': 2, '4': 3, '5': 11, '6': '.Song', '10': 'songs'},
  ],
};

/// Descriptor for `RawCollectionComponentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rawCollectionComponentResponseDescriptor = $convert.base64Decode('Ch5SYXdDb2xsZWN0aW9uQ29tcG9uZW50UmVzcG9uc2USHgoKc2VxdWVudGlhbBgBIAEoCFIKc2VxdWVudGlhbBIbCgVzb25ncxgCIAMoCzIFLlNvbmdSBXNvbmdz');
@$core.Deprecated('Use lastFmCollectionComponentResponseDescriptor instead')
const LastFmCollectionComponentResponse$json = const {
  '1': 'LastFmCollectionComponentResponse',
  '2': const [
    const {'1': 'sequential', '3': 1, '4': 1, '5': 8, '10': 'sequential'},
    const {'1': 'limit', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'limit', '17': true},
    const {'1': 'collection_type', '3': 3, '4': 1, '5': 14, '6': '.LastFmCollectionType', '10': 'collectionType'},
  ],
  '8': const [
    const {'1': '_limit'},
  ],
};

/// Descriptor for `LastFmCollectionComponentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lastFmCollectionComponentResponseDescriptor = $convert.base64Decode('CiFMYXN0Rm1Db2xsZWN0aW9uQ29tcG9uZW50UmVzcG9uc2USHgoKc2VxdWVudGlhbBgBIAEoCFIKc2VxdWVudGlhbBIZCgVsaW1pdBgCIAEoBUgAUgVsaW1pdIgBARI+Cg9jb2xsZWN0aW9uX3R5cGUYAyABKA4yFS5MYXN0Rm1Db2xsZWN0aW9uVHlwZVIOY29sbGVjdGlvblR5cGVCCAoGX2xpbWl0');
@$core.Deprecated('Use spotifyCollectionComponentResponseDescriptor instead')
const SpotifyCollectionComponentResponse$json = const {
  '1': 'SpotifyCollectionComponentResponse',
  '2': const [
    const {'1': 'sequential', '3': 1, '4': 1, '5': 8, '10': 'sequential'},
    const {'1': 'limit', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'limit', '17': true},
    const {'1': 'collection_type', '3': 3, '4': 1, '5': 14, '6': '.SpotifyCollectionType', '10': 'collectionType'},
  ],
  '8': const [
    const {'1': '_limit'},
  ],
};

/// Descriptor for `SpotifyCollectionComponentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifyCollectionComponentResponseDescriptor = $convert.base64Decode('CiJTcG90aWZ5Q29sbGVjdGlvbkNvbXBvbmVudFJlc3BvbnNlEh4KCnNlcXVlbnRpYWwYASABKAhSCnNlcXVlbnRpYWwSGQoFbGltaXQYAiABKAVIAFIFbGltaXSIAQESPwoPY29sbGVjdGlvbl90eXBlGAMgASgOMhYuU3BvdGlmeUNvbGxlY3Rpb25UeXBlUg5jb2xsZWN0aW9uVHlwZUIICgZfbGltaXQ=');
