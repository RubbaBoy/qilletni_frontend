///
//  Generated code. Do not modify.
//  source: search/spotify_search.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../events/error_response.pb.dart' as $1;
import '../events/component/request/rpc_mapping.pb.dart' as $2;

class SpotifySearchQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifySearchQuery', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'query')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SpotifySearchQuery._() : super();
  factory SpotifySearchQuery({
    $core.String? query,
    $core.int? limit,
    $core.int? offset,
  }) {
    final _result = create();
    if (query != null) {
      _result.query = query;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    if (offset != null) {
      _result.offset = offset;
    }
    return _result;
  }
  factory SpotifySearchQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifySearchQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifySearchQuery clone() => SpotifySearchQuery()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifySearchQuery copyWith(void Function(SpotifySearchQuery) updates) => super.copyWith((message) => updates(message as SpotifySearchQuery)) as SpotifySearchQuery; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifySearchQuery create() => SpotifySearchQuery._();
  SpotifySearchQuery createEmptyInstance() => create();
  static $pb.PbList<SpotifySearchQuery> createRepeated() => $pb.PbList<SpotifySearchQuery>();
  @$core.pragma('dart2js:noInline')
  static SpotifySearchQuery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifySearchQuery>(create);
  static SpotifySearchQuery? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get offset => $_getIZ(2);
  @$pb.TagNumber(3)
  set offset($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffset() => clearField(3);
}

class SpotifySongResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifySongResponse', createEmptyInstance: create)
    ..aOM<$1.ResponseError>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $1.ResponseError.create)
    ..pc<$2.Song>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songs', $pb.PbFieldType.PM, subBuilder: $2.Song.create)
    ..hasRequiredFields = false
  ;

  SpotifySongResponse._() : super();
  factory SpotifySongResponse({
    $1.ResponseError? error,
    $core.Iterable<$2.Song>? songs,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    if (songs != null) {
      _result.songs.addAll(songs);
    }
    return _result;
  }
  factory SpotifySongResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifySongResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifySongResponse clone() => SpotifySongResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifySongResponse copyWith(void Function(SpotifySongResponse) updates) => super.copyWith((message) => updates(message as SpotifySongResponse)) as SpotifySongResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifySongResponse create() => SpotifySongResponse._();
  SpotifySongResponse createEmptyInstance() => create();
  static $pb.PbList<SpotifySongResponse> createRepeated() => $pb.PbList<SpotifySongResponse>();
  @$core.pragma('dart2js:noInline')
  static SpotifySongResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifySongResponse>(create);
  static SpotifySongResponse? _defaultInstance;

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
  $core.List<$2.Song> get songs => $_getList(1);
}

class SpotifyPlaylistResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifyPlaylistResponse', createEmptyInstance: create)
    ..aOM<$1.ResponseError>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $1.ResponseError.create)
    ..pc<$2.Playlist>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playlists', $pb.PbFieldType.PM, subBuilder: $2.Playlist.create)
    ..hasRequiredFields = false
  ;

  SpotifyPlaylistResponse._() : super();
  factory SpotifyPlaylistResponse({
    $1.ResponseError? error,
    $core.Iterable<$2.Playlist>? playlists,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    if (playlists != null) {
      _result.playlists.addAll(playlists);
    }
    return _result;
  }
  factory SpotifyPlaylistResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifyPlaylistResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifyPlaylistResponse clone() => SpotifyPlaylistResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifyPlaylistResponse copyWith(void Function(SpotifyPlaylistResponse) updates) => super.copyWith((message) => updates(message as SpotifyPlaylistResponse)) as SpotifyPlaylistResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifyPlaylistResponse create() => SpotifyPlaylistResponse._();
  SpotifyPlaylistResponse createEmptyInstance() => create();
  static $pb.PbList<SpotifyPlaylistResponse> createRepeated() => $pb.PbList<SpotifyPlaylistResponse>();
  @$core.pragma('dart2js:noInline')
  static SpotifyPlaylistResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifyPlaylistResponse>(create);
  static SpotifyPlaylistResponse? _defaultInstance;

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
  $core.List<$2.Playlist> get playlists => $_getList(1);
}

class SpotifyAlbumResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifyAlbumResponse', createEmptyInstance: create)
    ..aOM<$1.ResponseError>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $1.ResponseError.create)
    ..pc<$2.Album>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'albums', $pb.PbFieldType.PM, subBuilder: $2.Album.create)
    ..hasRequiredFields = false
  ;

  SpotifyAlbumResponse._() : super();
  factory SpotifyAlbumResponse({
    $1.ResponseError? error,
    $core.Iterable<$2.Album>? albums,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    if (albums != null) {
      _result.albums.addAll(albums);
    }
    return _result;
  }
  factory SpotifyAlbumResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifyAlbumResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifyAlbumResponse clone() => SpotifyAlbumResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifyAlbumResponse copyWith(void Function(SpotifyAlbumResponse) updates) => super.copyWith((message) => updates(message as SpotifyAlbumResponse)) as SpotifyAlbumResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifyAlbumResponse create() => SpotifyAlbumResponse._();
  SpotifyAlbumResponse createEmptyInstance() => create();
  static $pb.PbList<SpotifyAlbumResponse> createRepeated() => $pb.PbList<SpotifyAlbumResponse>();
  @$core.pragma('dart2js:noInline')
  static SpotifyAlbumResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifyAlbumResponse>(create);
  static SpotifyAlbumResponse? _defaultInstance;

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
  $core.List<$2.Album> get albums => $_getList(1);
}

class SpotifyArtistResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifyArtistResponse', createEmptyInstance: create)
    ..aOM<$1.ResponseError>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $1.ResponseError.create)
    ..pc<$2.Artist>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'artists', $pb.PbFieldType.PM, subBuilder: $2.Artist.create)
    ..hasRequiredFields = false
  ;

  SpotifyArtistResponse._() : super();
  factory SpotifyArtistResponse({
    $1.ResponseError? error,
    $core.Iterable<$2.Artist>? artists,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    if (artists != null) {
      _result.artists.addAll(artists);
    }
    return _result;
  }
  factory SpotifyArtistResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifyArtistResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifyArtistResponse clone() => SpotifyArtistResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifyArtistResponse copyWith(void Function(SpotifyArtistResponse) updates) => super.copyWith((message) => updates(message as SpotifyArtistResponse)) as SpotifyArtistResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifyArtistResponse create() => SpotifyArtistResponse._();
  SpotifyArtistResponse createEmptyInstance() => create();
  static $pb.PbList<SpotifyArtistResponse> createRepeated() => $pb.PbList<SpotifyArtistResponse>();
  @$core.pragma('dart2js:noInline')
  static SpotifyArtistResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifyArtistResponse>(create);
  static SpotifyArtistResponse? _defaultInstance;

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
  $core.List<$2.Artist> get artists => $_getList(1);
}

