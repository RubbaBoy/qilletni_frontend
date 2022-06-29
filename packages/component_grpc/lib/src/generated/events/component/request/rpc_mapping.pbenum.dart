///
//  Generated code. Do not modify.
//  source: events/component/request/rpc_mapping.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class LoopStrategy extends $pb.ProtobufEnum {
  static const LoopStrategy NONE = LoopStrategy._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NONE');
  static const LoopStrategy ITERATIONS = LoopStrategy._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ITERATIONS');
  static const LoopStrategy DURATION = LoopStrategy._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DURATION');
  static const LoopStrategy ABS_TIME = LoopStrategy._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ABS_TIME');

  static const $core.List<LoopStrategy> values = <LoopStrategy> [
    NONE,
    ITERATIONS,
    DURATION,
    ABS_TIME,
  ];

  static final $core.Map<$core.int, LoopStrategy> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LoopStrategy? valueOf($core.int value) => _byValue[value];

  const LoopStrategy._($core.int v, $core.String n) : super(v, n);
}

class LastFmCollectionType extends $pb.ProtobufEnum {
  static const LastFmCollectionType TOP_TRACKS = LastFmCollectionType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TOP_TRACKS');
  static const LastFmCollectionType LOVED_TRACKS = LastFmCollectionType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOVED_TRACKS');
  static const LastFmCollectionType TOP_ARTIST = LastFmCollectionType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TOP_ARTIST');
  static const LastFmCollectionType TOP_ALBUM = LastFmCollectionType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TOP_ALBUM');

  static const $core.List<LastFmCollectionType> values = <LastFmCollectionType> [
    TOP_TRACKS,
    LOVED_TRACKS,
    TOP_ARTIST,
    TOP_ALBUM,
  ];

  static final $core.Map<$core.int, LastFmCollectionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LastFmCollectionType? valueOf($core.int value) => _byValue[value];

  const LastFmCollectionType._($core.int v, $core.String n) : super(v, n);
}

class SpotifyCollectionType extends $pb.ProtobufEnum {
  static const SpotifyCollectionType PLAYLIST = SpotifyCollectionType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PLAYLIST');
  static const SpotifyCollectionType ARTIST = SpotifyCollectionType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIST');
  static const SpotifyCollectionType ALBUM = SpotifyCollectionType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ALBUM');
  static const SpotifyCollectionType SEARCH = SpotifyCollectionType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SEARCH');

  static const $core.List<SpotifyCollectionType> values = <SpotifyCollectionType> [
    PLAYLIST,
    ARTIST,
    ALBUM,
    SEARCH,
  ];

  static final $core.Map<$core.int, SpotifyCollectionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SpotifyCollectionType? valueOf($core.int value) => _byValue[value];

  const SpotifyCollectionType._($core.int v, $core.String n) : super(v, n);
}

