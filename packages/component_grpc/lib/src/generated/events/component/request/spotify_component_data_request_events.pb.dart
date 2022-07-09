///
//  Generated code. Do not modify.
//  source: events/component/request/spotify_component_data_request_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../error_response.pb.dart' as $1;
import 'rpc_mapping.pb.dart' as $2;

class SpotifyComponentDataRequestEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifyComponentDataRequestEvent', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'componentId')
    ..hasRequiredFields = false
  ;

  SpotifyComponentDataRequestEvent._() : super();
  factory SpotifyComponentDataRequestEvent({
    $core.String? componentId,
  }) {
    final _result = create();
    if (componentId != null) {
      _result.componentId = componentId;
    }
    return _result;
  }
  factory SpotifyComponentDataRequestEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifyComponentDataRequestEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifyComponentDataRequestEvent clone() => SpotifyComponentDataRequestEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifyComponentDataRequestEvent copyWith(void Function(SpotifyComponentDataRequestEvent) updates) => super.copyWith((message) => updates(message as SpotifyComponentDataRequestEvent)) as SpotifyComponentDataRequestEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifyComponentDataRequestEvent create() => SpotifyComponentDataRequestEvent._();
  SpotifyComponentDataRequestEvent createEmptyInstance() => create();
  static $pb.PbList<SpotifyComponentDataRequestEvent> createRepeated() => $pb.PbList<SpotifyComponentDataRequestEvent>();
  @$core.pragma('dart2js:noInline')
  static SpotifyComponentDataRequestEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifyComponentDataRequestEvent>(create);
  static SpotifyComponentDataRequestEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get componentId => $_getSZ(0);
  @$pb.TagNumber(1)
  set componentId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasComponentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearComponentId() => clearField(1);
}

enum SpotifyComponentDataResponse_SpotifyData {
  albumData, 
  artistData, 
  playlistData, 
  searchData, 
  notSet
}

class SpotifyComponentDataResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SpotifyComponentDataResponse_SpotifyData> _SpotifyComponentDataResponse_SpotifyDataByTag = {
    2 : SpotifyComponentDataResponse_SpotifyData.albumData,
    3 : SpotifyComponentDataResponse_SpotifyData.artistData,
    4 : SpotifyComponentDataResponse_SpotifyData.playlistData,
    5 : SpotifyComponentDataResponse_SpotifyData.searchData,
    0 : SpotifyComponentDataResponse_SpotifyData.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifyComponentDataResponse', createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5])
    ..aOM<$1.ResponseError>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $1.ResponseError.create)
    ..aOM<SpotifyAlbumDataResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'albumData', subBuilder: SpotifyAlbumDataResponse.create)
    ..aOM<SpotifyArtistDataResponse>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'artistData', subBuilder: SpotifyArtistDataResponse.create)
    ..aOM<SpotifyPlaylistDataResponse>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playlistData', subBuilder: SpotifyPlaylistDataResponse.create)
    ..aOM<SpotifySearchDataResponse>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'searchData', subBuilder: SpotifySearchDataResponse.create)
    ..hasRequiredFields = false
  ;

  SpotifyComponentDataResponse._() : super();
  factory SpotifyComponentDataResponse({
    $1.ResponseError? error,
    SpotifyAlbumDataResponse? albumData,
    SpotifyArtistDataResponse? artistData,
    SpotifyPlaylistDataResponse? playlistData,
    SpotifySearchDataResponse? searchData,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    if (albumData != null) {
      _result.albumData = albumData;
    }
    if (artistData != null) {
      _result.artistData = artistData;
    }
    if (playlistData != null) {
      _result.playlistData = playlistData;
    }
    if (searchData != null) {
      _result.searchData = searchData;
    }
    return _result;
  }
  factory SpotifyComponentDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifyComponentDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifyComponentDataResponse clone() => SpotifyComponentDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifyComponentDataResponse copyWith(void Function(SpotifyComponentDataResponse) updates) => super.copyWith((message) => updates(message as SpotifyComponentDataResponse)) as SpotifyComponentDataResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifyComponentDataResponse create() => SpotifyComponentDataResponse._();
  SpotifyComponentDataResponse createEmptyInstance() => create();
  static $pb.PbList<SpotifyComponentDataResponse> createRepeated() => $pb.PbList<SpotifyComponentDataResponse>();
  @$core.pragma('dart2js:noInline')
  static SpotifyComponentDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifyComponentDataResponse>(create);
  static SpotifyComponentDataResponse? _defaultInstance;

  SpotifyComponentDataResponse_SpotifyData whichSpotifyData() => _SpotifyComponentDataResponse_SpotifyDataByTag[$_whichOneof(0)]!;
  void clearSpotifyData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.ResponseError get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($1.ResponseError v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  $1.ResponseError ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  SpotifyAlbumDataResponse get albumData => $_getN(1);
  @$pb.TagNumber(2)
  set albumData(SpotifyAlbumDataResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAlbumData() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlbumData() => clearField(2);
  @$pb.TagNumber(2)
  SpotifyAlbumDataResponse ensureAlbumData() => $_ensure(1);

  @$pb.TagNumber(3)
  SpotifyArtistDataResponse get artistData => $_getN(2);
  @$pb.TagNumber(3)
  set artistData(SpotifyArtistDataResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasArtistData() => $_has(2);
  @$pb.TagNumber(3)
  void clearArtistData() => clearField(3);
  @$pb.TagNumber(3)
  SpotifyArtistDataResponse ensureArtistData() => $_ensure(2);

  @$pb.TagNumber(4)
  SpotifyPlaylistDataResponse get playlistData => $_getN(3);
  @$pb.TagNumber(4)
  set playlistData(SpotifyPlaylistDataResponse v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPlaylistData() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlaylistData() => clearField(4);
  @$pb.TagNumber(4)
  SpotifyPlaylistDataResponse ensurePlaylistData() => $_ensure(3);

  @$pb.TagNumber(5)
  SpotifySearchDataResponse get searchData => $_getN(4);
  @$pb.TagNumber(5)
  set searchData(SpotifySearchDataResponse v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSearchData() => $_has(4);
  @$pb.TagNumber(5)
  void clearSearchData() => clearField(5);
  @$pb.TagNumber(5)
  SpotifySearchDataResponse ensureSearchData() => $_ensure(4);
}

class SpotifyAlbumDataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifyAlbumDataResponse', createEmptyInstance: create)
    ..aOM<$2.Album>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'album', subBuilder: $2.Album.create)
    ..hasRequiredFields = false
  ;

  SpotifyAlbumDataResponse._() : super();
  factory SpotifyAlbumDataResponse({
    $2.Album? album,
  }) {
    final _result = create();
    if (album != null) {
      _result.album = album;
    }
    return _result;
  }
  factory SpotifyAlbumDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifyAlbumDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifyAlbumDataResponse clone() => SpotifyAlbumDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifyAlbumDataResponse copyWith(void Function(SpotifyAlbumDataResponse) updates) => super.copyWith((message) => updates(message as SpotifyAlbumDataResponse)) as SpotifyAlbumDataResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifyAlbumDataResponse create() => SpotifyAlbumDataResponse._();
  SpotifyAlbumDataResponse createEmptyInstance() => create();
  static $pb.PbList<SpotifyAlbumDataResponse> createRepeated() => $pb.PbList<SpotifyAlbumDataResponse>();
  @$core.pragma('dart2js:noInline')
  static SpotifyAlbumDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifyAlbumDataResponse>(create);
  static SpotifyAlbumDataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Album get album => $_getN(0);
  @$pb.TagNumber(1)
  set album($2.Album v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAlbum() => $_has(0);
  @$pb.TagNumber(1)
  void clearAlbum() => clearField(1);
  @$pb.TagNumber(1)
  $2.Album ensureAlbum() => $_ensure(0);
}

class SpotifyArtistDataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifyArtistDataResponse', createEmptyInstance: create)
    ..aOM<$2.Artist>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'artist', subBuilder: $2.Artist.create)
    ..hasRequiredFields = false
  ;

  SpotifyArtistDataResponse._() : super();
  factory SpotifyArtistDataResponse({
    $2.Artist? artist,
  }) {
    final _result = create();
    if (artist != null) {
      _result.artist = artist;
    }
    return _result;
  }
  factory SpotifyArtistDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifyArtistDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifyArtistDataResponse clone() => SpotifyArtistDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifyArtistDataResponse copyWith(void Function(SpotifyArtistDataResponse) updates) => super.copyWith((message) => updates(message as SpotifyArtistDataResponse)) as SpotifyArtistDataResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifyArtistDataResponse create() => SpotifyArtistDataResponse._();
  SpotifyArtistDataResponse createEmptyInstance() => create();
  static $pb.PbList<SpotifyArtistDataResponse> createRepeated() => $pb.PbList<SpotifyArtistDataResponse>();
  @$core.pragma('dart2js:noInline')
  static SpotifyArtistDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifyArtistDataResponse>(create);
  static SpotifyArtistDataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Artist get artist => $_getN(0);
  @$pb.TagNumber(1)
  set artist($2.Artist v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArtist() => $_has(0);
  @$pb.TagNumber(1)
  void clearArtist() => clearField(1);
  @$pb.TagNumber(1)
  $2.Artist ensureArtist() => $_ensure(0);
}

class SpotifyPlaylistDataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifyPlaylistDataResponse', createEmptyInstance: create)
    ..aOM<$2.Playlist>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playlist', subBuilder: $2.Playlist.create)
    ..hasRequiredFields = false
  ;

  SpotifyPlaylistDataResponse._() : super();
  factory SpotifyPlaylistDataResponse({
    $2.Playlist? playlist,
  }) {
    final _result = create();
    if (playlist != null) {
      _result.playlist = playlist;
    }
    return _result;
  }
  factory SpotifyPlaylistDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifyPlaylistDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifyPlaylistDataResponse clone() => SpotifyPlaylistDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifyPlaylistDataResponse copyWith(void Function(SpotifyPlaylistDataResponse) updates) => super.copyWith((message) => updates(message as SpotifyPlaylistDataResponse)) as SpotifyPlaylistDataResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifyPlaylistDataResponse create() => SpotifyPlaylistDataResponse._();
  SpotifyPlaylistDataResponse createEmptyInstance() => create();
  static $pb.PbList<SpotifyPlaylistDataResponse> createRepeated() => $pb.PbList<SpotifyPlaylistDataResponse>();
  @$core.pragma('dart2js:noInline')
  static SpotifyPlaylistDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifyPlaylistDataResponse>(create);
  static SpotifyPlaylistDataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Playlist get playlist => $_getN(0);
  @$pb.TagNumber(1)
  set playlist($2.Playlist v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaylist() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaylist() => clearField(1);
  @$pb.TagNumber(1)
  $2.Playlist ensurePlaylist() => $_ensure(0);
}

class SpotifySearchDataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifySearchDataResponse', createEmptyInstance: create)
    ..aOM<$2.SpotifySearchData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'searchData', subBuilder: $2.SpotifySearchData.create)
    ..hasRequiredFields = false
  ;

  SpotifySearchDataResponse._() : super();
  factory SpotifySearchDataResponse({
    $2.SpotifySearchData? searchData,
  }) {
    final _result = create();
    if (searchData != null) {
      _result.searchData = searchData;
    }
    return _result;
  }
  factory SpotifySearchDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifySearchDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifySearchDataResponse clone() => SpotifySearchDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifySearchDataResponse copyWith(void Function(SpotifySearchDataResponse) updates) => super.copyWith((message) => updates(message as SpotifySearchDataResponse)) as SpotifySearchDataResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifySearchDataResponse create() => SpotifySearchDataResponse._();
  SpotifySearchDataResponse createEmptyInstance() => create();
  static $pb.PbList<SpotifySearchDataResponse> createRepeated() => $pb.PbList<SpotifySearchDataResponse>();
  @$core.pragma('dart2js:noInline')
  static SpotifySearchDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifySearchDataResponse>(create);
  static SpotifySearchDataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $2.SpotifySearchData get searchData => $_getN(0);
  @$pb.TagNumber(1)
  set searchData($2.SpotifySearchData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSearchData() => $_has(0);
  @$pb.TagNumber(1)
  void clearSearchData() => clearField(1);
  @$pb.TagNumber(1)
  $2.SpotifySearchData ensureSearchData() => $_ensure(0);
}

