///
//  Generated code. Do not modify.
//  source: events/component/request/spotify_component_data_request_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use spotifyComponentDataRequestEventDescriptor instead')
const SpotifyComponentDataRequestEvent$json = const {
  '1': 'SpotifyComponentDataRequestEvent',
  '2': const [
    const {'1': 'component_id', '3': 1, '4': 1, '5': 9, '10': 'componentId'},
  ],
};

/// Descriptor for `SpotifyComponentDataRequestEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifyComponentDataRequestEventDescriptor = $convert.base64Decode('CiBTcG90aWZ5Q29tcG9uZW50RGF0YVJlcXVlc3RFdmVudBIhCgxjb21wb25lbnRfaWQYASABKAlSC2NvbXBvbmVudElk');
@$core.Deprecated('Use spotifyComponentDataResponseDescriptor instead')
const SpotifyComponentDataResponse$json = const {
  '1': 'SpotifyComponentDataResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ResponseError', '9': 1, '10': 'error', '17': true},
    const {'1': 'album_data', '3': 2, '4': 1, '5': 11, '6': '.SpotifyAlbumDataResponse', '9': 0, '10': 'albumData'},
    const {'1': 'artist_data', '3': 3, '4': 1, '5': 11, '6': '.SpotifyArtistDataResponse', '9': 0, '10': 'artistData'},
    const {'1': 'playlist_data', '3': 4, '4': 1, '5': 11, '6': '.SpotifyPlaylistDataResponse', '9': 0, '10': 'playlistData'},
    const {'1': 'search_data', '3': 5, '4': 1, '5': 11, '6': '.SpotifySearchDataResponse', '9': 0, '10': 'searchData'},
  ],
  '8': const [
    const {'1': 'spotifyData'},
    const {'1': '_error'},
  ],
};

/// Descriptor for `SpotifyComponentDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifyComponentDataResponseDescriptor = $convert.base64Decode('ChxTcG90aWZ5Q29tcG9uZW50RGF0YVJlc3BvbnNlEikKBWVycm9yGAEgASgLMg4uUmVzcG9uc2VFcnJvckgBUgVlcnJvcogBARI6CgphbGJ1bV9kYXRhGAIgASgLMhkuU3BvdGlmeUFsYnVtRGF0YVJlc3BvbnNlSABSCWFsYnVtRGF0YRI9CgthcnRpc3RfZGF0YRgDIAEoCzIaLlNwb3RpZnlBcnRpc3REYXRhUmVzcG9uc2VIAFIKYXJ0aXN0RGF0YRJDCg1wbGF5bGlzdF9kYXRhGAQgASgLMhwuU3BvdGlmeVBsYXlsaXN0RGF0YVJlc3BvbnNlSABSDHBsYXlsaXN0RGF0YRI9CgtzZWFyY2hfZGF0YRgFIAEoCzIaLlNwb3RpZnlTZWFyY2hEYXRhUmVzcG9uc2VIAFIKc2VhcmNoRGF0YUINCgtzcG90aWZ5RGF0YUIICgZfZXJyb3I=');
@$core.Deprecated('Use spotifyAlbumDataResponseDescriptor instead')
const SpotifyAlbumDataResponse$json = const {
  '1': 'SpotifyAlbumDataResponse',
  '2': const [
    const {'1': 'album', '3': 1, '4': 1, '5': 11, '6': '.Album', '10': 'album'},
  ],
};

/// Descriptor for `SpotifyAlbumDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifyAlbumDataResponseDescriptor = $convert.base64Decode('ChhTcG90aWZ5QWxidW1EYXRhUmVzcG9uc2USHAoFYWxidW0YASABKAsyBi5BbGJ1bVIFYWxidW0=');
@$core.Deprecated('Use spotifyArtistDataResponseDescriptor instead')
const SpotifyArtistDataResponse$json = const {
  '1': 'SpotifyArtistDataResponse',
  '2': const [
    const {'1': 'artist', '3': 1, '4': 1, '5': 11, '6': '.Artist', '10': 'artist'},
  ],
};

/// Descriptor for `SpotifyArtistDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifyArtistDataResponseDescriptor = $convert.base64Decode('ChlTcG90aWZ5QXJ0aXN0RGF0YVJlc3BvbnNlEh8KBmFydGlzdBgBIAEoCzIHLkFydGlzdFIGYXJ0aXN0');
@$core.Deprecated('Use spotifyPlaylistDataResponseDescriptor instead')
const SpotifyPlaylistDataResponse$json = const {
  '1': 'SpotifyPlaylistDataResponse',
  '2': const [
    const {'1': 'playlist', '3': 1, '4': 1, '5': 11, '6': '.Playlist', '10': 'playlist'},
  ],
};

/// Descriptor for `SpotifyPlaylistDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifyPlaylistDataResponseDescriptor = $convert.base64Decode('ChtTcG90aWZ5UGxheWxpc3REYXRhUmVzcG9uc2USJQoIcGxheWxpc3QYASABKAsyCS5QbGF5bGlzdFIIcGxheWxpc3Q=');
@$core.Deprecated('Use spotifySearchDataResponseDescriptor instead')
const SpotifySearchDataResponse$json = const {
  '1': 'SpotifySearchDataResponse',
  '2': const [
    const {'1': 'search_data', '3': 1, '4': 1, '5': 11, '6': '.SpotifySearchData', '10': 'searchData'},
  ],
};

/// Descriptor for `SpotifySearchDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifySearchDataResponseDescriptor = $convert.base64Decode('ChlTcG90aWZ5U2VhcmNoRGF0YVJlc3BvbnNlEjMKC3NlYXJjaF9kYXRhGAEgASgLMhIuU3BvdGlmeVNlYXJjaERhdGFSCnNlYXJjaERhdGE=');
