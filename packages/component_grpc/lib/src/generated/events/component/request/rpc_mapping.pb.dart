///
//  Generated code. Do not modify.
//  source: events/component/request/rpc_mapping.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'rpc_mapping.pbenum.dart';

class Song extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Song', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'artist')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'artworkUrl')
    ..hasRequiredFields = false
  ;

  Song._() : super();
  factory Song({
    $core.String? id,
    $core.String? name,
    $core.String? artist,
    $core.String? artworkUrl,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (artist != null) {
      _result.artist = artist;
    }
    if (artworkUrl != null) {
      _result.artworkUrl = artworkUrl;
    }
    return _result;
  }
  factory Song.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Song.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Song clone() => Song()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Song copyWith(void Function(Song) updates) => super.copyWith((message) => updates(message as Song)) as Song; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Song create() => Song._();
  Song createEmptyInstance() => create();
  static $pb.PbList<Song> createRepeated() => $pb.PbList<Song>();
  @$core.pragma('dart2js:noInline')
  static Song getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Song>(create);
  static Song? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get artist => $_getSZ(2);
  @$pb.TagNumber(3)
  set artist($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasArtist() => $_has(2);
  @$pb.TagNumber(3)
  void clearArtist() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get artworkUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set artworkUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasArtworkUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearArtworkUrl() => clearField(4);
}

class Playlist extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Playlist', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'artworkUrl')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'followers', $pb.PbFieldType.O3)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  Playlist._() : super();
  factory Playlist({
    $core.String? id,
    $core.String? name,
    $core.String? owner,
    $core.String? artworkUrl,
    $core.int? followers,
    $core.String? description,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (artworkUrl != null) {
      _result.artworkUrl = artworkUrl;
    }
    if (followers != null) {
      _result.followers = followers;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory Playlist.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Playlist.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Playlist clone() => Playlist()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Playlist copyWith(void Function(Playlist) updates) => super.copyWith((message) => updates(message as Playlist)) as Playlist; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Playlist create() => Playlist._();
  Playlist createEmptyInstance() => create();
  static $pb.PbList<Playlist> createRepeated() => $pb.PbList<Playlist>();
  @$core.pragma('dart2js:noInline')
  static Playlist getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Playlist>(create);
  static Playlist? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get owner => $_getSZ(2);
  @$pb.TagNumber(3)
  set owner($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOwner() => $_has(2);
  @$pb.TagNumber(3)
  void clearOwner() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get artworkUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set artworkUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasArtworkUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearArtworkUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get followers => $_getIZ(4);
  @$pb.TagNumber(5)
  set followers($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFollowers() => $_has(4);
  @$pb.TagNumber(5)
  void clearFollowers() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);
}

class Artist extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Artist', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'artworkUrl')
    ..hasRequiredFields = false
  ;

  Artist._() : super();
  factory Artist({
    $core.String? id,
    $core.String? name,
    $core.String? artworkUrl,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (artworkUrl != null) {
      _result.artworkUrl = artworkUrl;
    }
    return _result;
  }
  factory Artist.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Artist.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Artist clone() => Artist()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Artist copyWith(void Function(Artist) updates) => super.copyWith((message) => updates(message as Artist)) as Artist; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Artist create() => Artist._();
  Artist createEmptyInstance() => create();
  static $pb.PbList<Artist> createRepeated() => $pb.PbList<Artist>();
  @$core.pragma('dart2js:noInline')
  static Artist getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Artist>(create);
  static Artist? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get artworkUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set artworkUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasArtworkUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearArtworkUrl() => clearField(3);
}

class Album extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Album', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'artworkUrl')
    ..hasRequiredFields = false
  ;

  Album._() : super();
  factory Album({
    $core.String? id,
    $core.String? name,
    $core.String? artworkUrl,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (artworkUrl != null) {
      _result.artworkUrl = artworkUrl;
    }
    return _result;
  }
  factory Album.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Album.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Album clone() => Album()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Album copyWith(void Function(Album) updates) => super.copyWith((message) => updates(message as Album)) as Album; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Album create() => Album._();
  Album createEmptyInstance() => create();
  static $pb.PbList<Album> createRepeated() => $pb.PbList<Album>();
  @$core.pragma('dart2js:noInline')
  static Album getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Album>(create);
  static Album? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get artworkUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set artworkUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasArtworkUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearArtworkUrl() => clearField(3);
}

class YearRange extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'YearRange', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startYear', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endYear', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  YearRange._() : super();
  factory YearRange({
    $core.int? startYear,
    $core.int? endYear,
  }) {
    final _result = create();
    if (startYear != null) {
      _result.startYear = startYear;
    }
    if (endYear != null) {
      _result.endYear = endYear;
    }
    return _result;
  }
  factory YearRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory YearRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  YearRange clone() => YearRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  YearRange copyWith(void Function(YearRange) updates) => super.copyWith((message) => updates(message as YearRange)) as YearRange; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static YearRange create() => YearRange._();
  YearRange createEmptyInstance() => create();
  static $pb.PbList<YearRange> createRepeated() => $pb.PbList<YearRange>();
  @$core.pragma('dart2js:noInline')
  static YearRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<YearRange>(create);
  static YearRange? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get startYear => $_getIZ(0);
  @$pb.TagNumber(1)
  set startYear($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartYear() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartYear() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get endYear => $_getIZ(1);
  @$pb.TagNumber(2)
  set endYear($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndYear() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndYear() => clearField(2);
}

enum YearChooser_Choose {
  year, 
  range, 
  notSet
}

class YearChooser extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, YearChooser_Choose> _YearChooser_ChooseByTag = {
    1 : YearChooser_Choose.year,
    2 : YearChooser_Choose.range,
    0 : YearChooser_Choose.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'YearChooser', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'year', $pb.PbFieldType.O3)
    ..aOM<YearRange>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'range', subBuilder: YearRange.create)
    ..hasRequiredFields = false
  ;

  YearChooser._() : super();
  factory YearChooser({
    $core.int? year,
    YearRange? range,
  }) {
    final _result = create();
    if (year != null) {
      _result.year = year;
    }
    if (range != null) {
      _result.range = range;
    }
    return _result;
  }
  factory YearChooser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory YearChooser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  YearChooser clone() => YearChooser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  YearChooser copyWith(void Function(YearChooser) updates) => super.copyWith((message) => updates(message as YearChooser)) as YearChooser; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static YearChooser create() => YearChooser._();
  YearChooser createEmptyInstance() => create();
  static $pb.PbList<YearChooser> createRepeated() => $pb.PbList<YearChooser>();
  @$core.pragma('dart2js:noInline')
  static YearChooser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<YearChooser>(create);
  static YearChooser? _defaultInstance;

  YearChooser_Choose whichChoose() => _YearChooser_ChooseByTag[$_whichOneof(0)]!;
  void clearChoose() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get year => $_getIZ(0);
  @$pb.TagNumber(1)
  set year($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasYear() => $_has(0);
  @$pb.TagNumber(1)
  void clearYear() => clearField(1);

  @$pb.TagNumber(2)
  YearRange get range => $_getN(1);
  @$pb.TagNumber(2)
  set range(YearRange v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRange() => $_has(1);
  @$pb.TagNumber(2)
  void clearRange() => clearField(2);
  @$pb.TagNumber(2)
  YearRange ensureRange() => $_ensure(1);
}

class SpotifySearchData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifySearchData', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'searchData', protoName: 'searchData')
    ..aOM<YearChooser>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'yearChooser', subBuilder: YearChooser.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'genre')
    ..hasRequiredFields = false
  ;

  SpotifySearchData._() : super();
  factory SpotifySearchData({
    $core.String? searchData,
    YearChooser? yearChooser,
    $core.String? genre,
  }) {
    final _result = create();
    if (searchData != null) {
      _result.searchData = searchData;
    }
    if (yearChooser != null) {
      _result.yearChooser = yearChooser;
    }
    if (genre != null) {
      _result.genre = genre;
    }
    return _result;
  }
  factory SpotifySearchData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifySearchData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifySearchData clone() => SpotifySearchData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifySearchData copyWith(void Function(SpotifySearchData) updates) => super.copyWith((message) => updates(message as SpotifySearchData)) as SpotifySearchData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifySearchData create() => SpotifySearchData._();
  SpotifySearchData createEmptyInstance() => create();
  static $pb.PbList<SpotifySearchData> createRepeated() => $pb.PbList<SpotifySearchData>();
  @$core.pragma('dart2js:noInline')
  static SpotifySearchData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifySearchData>(create);
  static SpotifySearchData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get searchData => $_getSZ(0);
  @$pb.TagNumber(1)
  set searchData($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSearchData() => $_has(0);
  @$pb.TagNumber(1)
  void clearSearchData() => clearField(1);

  @$pb.TagNumber(2)
  YearChooser get yearChooser => $_getN(1);
  @$pb.TagNumber(2)
  set yearChooser(YearChooser v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasYearChooser() => $_has(1);
  @$pb.TagNumber(2)
  void clearYearChooser() => clearField(2);
  @$pb.TagNumber(2)
  YearChooser ensureYearChooser() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get genre => $_getSZ(2);
  @$pb.TagNumber(3)
  set genre($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGenre() => $_has(2);
  @$pb.TagNumber(3)
  void clearGenre() => clearField(3);
}

