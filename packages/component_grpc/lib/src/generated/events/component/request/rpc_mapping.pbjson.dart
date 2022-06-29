///
//  Generated code. Do not modify.
//  source: events/component/request/rpc_mapping.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use loopStrategyDescriptor instead')
const LoopStrategy$json = const {
  '1': 'LoopStrategy',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'ITERATIONS', '2': 1},
    const {'1': 'DURATION', '2': 2},
    const {'1': 'ABS_TIME', '2': 3},
  ],
};

/// Descriptor for `LoopStrategy`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List loopStrategyDescriptor = $convert.base64Decode('CgxMb29wU3RyYXRlZ3kSCAoETk9ORRAAEg4KCklURVJBVElPTlMQARIMCghEVVJBVElPThACEgwKCEFCU19USU1FEAM=');
@$core.Deprecated('Use lastFmCollectionTypeDescriptor instead')
const LastFmCollectionType$json = const {
  '1': 'LastFmCollectionType',
  '2': const [
    const {'1': 'TOP_TRACKS', '2': 0},
    const {'1': 'LOVED_TRACKS', '2': 1},
    const {'1': 'TOP_ARTIST', '2': 2},
    const {'1': 'TOP_ALBUM', '2': 3},
  ],
};

/// Descriptor for `LastFmCollectionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List lastFmCollectionTypeDescriptor = $convert.base64Decode('ChRMYXN0Rm1Db2xsZWN0aW9uVHlwZRIOCgpUT1BfVFJBQ0tTEAASEAoMTE9WRURfVFJBQ0tTEAESDgoKVE9QX0FSVElTVBACEg0KCVRPUF9BTEJVTRAD');
@$core.Deprecated('Use spotifyCollectionTypeDescriptor instead')
const SpotifyCollectionType$json = const {
  '1': 'SpotifyCollectionType',
  '2': const [
    const {'1': 'PLAYLIST', '2': 0},
    const {'1': 'ARTIST', '2': 1},
    const {'1': 'ALBUM', '2': 2},
    const {'1': 'SEARCH', '2': 3},
  ],
};

/// Descriptor for `SpotifyCollectionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List spotifyCollectionTypeDescriptor = $convert.base64Decode('ChVTcG90aWZ5Q29sbGVjdGlvblR5cGUSDAoIUExBWUxJU1QQABIKCgZBUlRJU1QQARIJCgVBTEJVTRACEgoKBlNFQVJDSBAD');
@$core.Deprecated('Use songDescriptor instead')
const Song$json = const {
  '1': 'Song',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'artist', '3': 3, '4': 1, '5': 9, '10': 'artist'},
    const {'1': 'artwork_url', '3': 4, '4': 1, '5': 9, '10': 'artworkUrl'},
  ],
};

/// Descriptor for `Song`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List songDescriptor = $convert.base64Decode('CgRTb25nEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBmFydGlzdBgDIAEoCVIGYXJ0aXN0Eh8KC2FydHdvcmtfdXJsGAQgASgJUgphcnR3b3JrVXJs');
@$core.Deprecated('Use playlistDescriptor instead')
const Playlist$json = const {
  '1': 'Playlist',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'owner', '3': 3, '4': 1, '5': 9, '10': 'owner'},
    const {'1': 'artwork_url', '3': 4, '4': 1, '5': 9, '10': 'artworkUrl'},
    const {'1': 'followers', '3': 5, '4': 1, '5': 5, '10': 'followers'},
    const {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `Playlist`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playlistDescriptor = $convert.base64Decode('CghQbGF5bGlzdBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVvd25lchgDIAEoCVIFb3duZXISHwoLYXJ0d29ya191cmwYBCABKAlSCmFydHdvcmtVcmwSHAoJZm9sbG93ZXJzGAUgASgFUglmb2xsb3dlcnMSIAoLZGVzY3JpcHRpb24YBiABKAlSC2Rlc2NyaXB0aW9u');
@$core.Deprecated('Use artistDescriptor instead')
const Artist$json = const {
  '1': 'Artist',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'artwork_url', '3': 3, '4': 1, '5': 9, '10': 'artworkUrl'},
  ],
};

/// Descriptor for `Artist`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List artistDescriptor = $convert.base64Decode('CgZBcnRpc3QSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSHwoLYXJ0d29ya191cmwYAyABKAlSCmFydHdvcmtVcmw=');
@$core.Deprecated('Use albumDescriptor instead')
const Album$json = const {
  '1': 'Album',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'artwork_url', '3': 3, '4': 1, '5': 9, '10': 'artworkUrl'},
  ],
};

/// Descriptor for `Album`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List albumDescriptor = $convert.base64Decode('CgVBbGJ1bRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIfCgthcnR3b3JrX3VybBgDIAEoCVIKYXJ0d29ya1VybA==');
@$core.Deprecated('Use yearRangeDescriptor instead')
const YearRange$json = const {
  '1': 'YearRange',
  '2': const [
    const {'1': 'start_year', '3': 1, '4': 1, '5': 5, '10': 'startYear'},
    const {'1': 'end_year', '3': 2, '4': 1, '5': 5, '10': 'endYear'},
  ],
};

/// Descriptor for `YearRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List yearRangeDescriptor = $convert.base64Decode('CglZZWFyUmFuZ2USHQoKc3RhcnRfeWVhchgBIAEoBVIJc3RhcnRZZWFyEhkKCGVuZF95ZWFyGAIgASgFUgdlbmRZZWFy');
@$core.Deprecated('Use yearChooserDescriptor instead')
const YearChooser$json = const {
  '1': 'YearChooser',
  '2': const [
    const {'1': 'year', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'year'},
    const {'1': 'range', '3': 2, '4': 1, '5': 11, '6': '.YearRange', '9': 0, '10': 'range'},
  ],
  '8': const [
    const {'1': 'choose'},
  ],
};

/// Descriptor for `YearChooser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List yearChooserDescriptor = $convert.base64Decode('CgtZZWFyQ2hvb3NlchIUCgR5ZWFyGAEgASgFSABSBHllYXISIgoFcmFuZ2UYAiABKAsyCi5ZZWFyUmFuZ2VIAFIFcmFuZ2VCCAoGY2hvb3Nl');
@$core.Deprecated('Use spotifySearchDataDescriptor instead')
const SpotifySearchData$json = const {
  '1': 'SpotifySearchData',
  '2': const [
    const {'1': 'searchData', '3': 1, '4': 1, '5': 9, '10': 'searchData'},
    const {'1': 'year_chooser', '3': 2, '4': 1, '5': 11, '6': '.YearChooser', '9': 0, '10': 'yearChooser', '17': true},
    const {'1': 'genre', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'genre', '17': true},
  ],
  '8': const [
    const {'1': '_year_chooser'},
    const {'1': '_genre'},
  ],
};

/// Descriptor for `SpotifySearchData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifySearchDataDescriptor = $convert.base64Decode('ChFTcG90aWZ5U2VhcmNoRGF0YRIeCgpzZWFyY2hEYXRhGAEgASgJUgpzZWFyY2hEYXRhEjQKDHllYXJfY2hvb3NlchgCIAEoCzIMLlllYXJDaG9vc2VySABSC3llYXJDaG9vc2VyiAEBEhkKBWdlbnJlGAMgASgJSAFSBWdlbnJliAEBQg8KDV95ZWFyX2Nob29zZXJCCAoGX2dlbnJl');
