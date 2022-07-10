///
//  Generated code. Do not modify.
//  source: search/spotify_search.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'spotify_search.pb.dart' as $0;
export 'spotify_search.pb.dart';

class SpotifySearchServiceClient extends $grpc.Client {
  static final _$searchSongs =
      $grpc.ClientMethod<$0.SpotifySearchQuery, $0.SpotifySongResponse>(
          '/SpotifySearchService/SearchSongs',
          ($0.SpotifySearchQuery value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SpotifySongResponse.fromBuffer(value));
  static final _$searchPlaylists =
      $grpc.ClientMethod<$0.SpotifySearchQuery, $0.SpotifyPlaylistResponse>(
          '/SpotifySearchService/SearchPlaylists',
          ($0.SpotifySearchQuery value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SpotifyPlaylistResponse.fromBuffer(value));
  static final _$searchAlbums =
      $grpc.ClientMethod<$0.SpotifySearchQuery, $0.SpotifyAlbumResponse>(
          '/SpotifySearchService/SearchAlbums',
          ($0.SpotifySearchQuery value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SpotifyAlbumResponse.fromBuffer(value));
  static final _$searchArtists =
      $grpc.ClientMethod<$0.SpotifySearchQuery, $0.SpotifyArtistResponse>(
          '/SpotifySearchService/SearchArtists',
          ($0.SpotifySearchQuery value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SpotifyArtistResponse.fromBuffer(value));

  SpotifySearchServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.SpotifySongResponse> searchSongs(
      $0.SpotifySearchQuery request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchSongs, request, options: options);
  }

  $grpc.ResponseFuture<$0.SpotifyPlaylistResponse> searchPlaylists(
      $0.SpotifySearchQuery request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchPlaylists, request, options: options);
  }

  $grpc.ResponseFuture<$0.SpotifyAlbumResponse> searchAlbums(
      $0.SpotifySearchQuery request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchAlbums, request, options: options);
  }

  $grpc.ResponseFuture<$0.SpotifyArtistResponse> searchArtists(
      $0.SpotifySearchQuery request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchArtists, request, options: options);
  }
}

abstract class SpotifySearchServiceBase extends $grpc.Service {
  $core.String get $name => 'SpotifySearchService';

  SpotifySearchServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.SpotifySearchQuery, $0.SpotifySongResponse>(
            'SearchSongs',
            searchSongs_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SpotifySearchQuery.fromBuffer(value),
            ($0.SpotifySongResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.SpotifySearchQuery, $0.SpotifyPlaylistResponse>(
            'SearchPlaylists',
            searchPlaylists_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SpotifySearchQuery.fromBuffer(value),
            ($0.SpotifyPlaylistResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.SpotifySearchQuery, $0.SpotifyAlbumResponse>(
            'SearchAlbums',
            searchAlbums_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SpotifySearchQuery.fromBuffer(value),
            ($0.SpotifyAlbumResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.SpotifySearchQuery, $0.SpotifyArtistResponse>(
            'SearchArtists',
            searchArtists_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SpotifySearchQuery.fromBuffer(value),
            ($0.SpotifyArtistResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SpotifySongResponse> searchSongs_Pre($grpc.ServiceCall call,
      $async.Future<$0.SpotifySearchQuery> request) async {
    return searchSongs(call, await request);
  }

  $async.Future<$0.SpotifyPlaylistResponse> searchPlaylists_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SpotifySearchQuery> request) async {
    return searchPlaylists(call, await request);
  }

  $async.Future<$0.SpotifyAlbumResponse> searchAlbums_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SpotifySearchQuery> request) async {
    return searchAlbums(call, await request);
  }

  $async.Future<$0.SpotifyArtistResponse> searchArtists_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SpotifySearchQuery> request) async {
    return searchArtists(call, await request);
  }

  $async.Future<$0.SpotifySongResponse> searchSongs(
      $grpc.ServiceCall call, $0.SpotifySearchQuery request);
  $async.Future<$0.SpotifyPlaylistResponse> searchPlaylists(
      $grpc.ServiceCall call, $0.SpotifySearchQuery request);
  $async.Future<$0.SpotifyAlbumResponse> searchAlbums(
      $grpc.ServiceCall call, $0.SpotifySearchQuery request);
  $async.Future<$0.SpotifyArtistResponse> searchArtists(
      $grpc.ServiceCall call, $0.SpotifySearchQuery request);
}
