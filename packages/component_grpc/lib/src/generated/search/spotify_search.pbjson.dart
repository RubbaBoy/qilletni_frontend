///
//  Generated code. Do not modify.
//  source: search/spotify_search.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use spotifySearchQueryDescriptor instead')
const SpotifySearchQuery$json = const {
  '1': 'SpotifySearchQuery',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    const {'1': 'limit', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'limit', '17': true},
    const {'1': 'offset', '3': 3, '4': 1, '5': 5, '9': 1, '10': 'offset', '17': true},
  ],
  '8': const [
    const {'1': '_limit'},
    const {'1': '_offset'},
  ],
};

/// Descriptor for `SpotifySearchQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifySearchQueryDescriptor = $convert.base64Decode('ChJTcG90aWZ5U2VhcmNoUXVlcnkSFAoFcXVlcnkYASABKAlSBXF1ZXJ5EhkKBWxpbWl0GAIgASgFSABSBWxpbWl0iAEBEhsKBm9mZnNldBgDIAEoBUgBUgZvZmZzZXSIAQFCCAoGX2xpbWl0QgkKB19vZmZzZXQ=');
@$core.Deprecated('Use spotifySongResponseDescriptor instead')
const SpotifySongResponse$json = const {
  '1': 'SpotifySongResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ResponseError', '9': 0, '10': 'error', '17': true},
    const {'1': 'songs', '3': 2, '4': 3, '5': 11, '6': '.Song', '10': 'songs'},
  ],
  '8': const [
    const {'1': '_error'},
  ],
};

/// Descriptor for `SpotifySongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifySongResponseDescriptor = $convert.base64Decode('ChNTcG90aWZ5U29uZ1Jlc3BvbnNlEikKBWVycm9yGAEgASgLMg4uUmVzcG9uc2VFcnJvckgAUgVlcnJvcogBARIbCgVzb25ncxgCIAMoCzIFLlNvbmdSBXNvbmdzQggKBl9lcnJvcg==');
@$core.Deprecated('Use spotifyPlaylistResponseDescriptor instead')
const SpotifyPlaylistResponse$json = const {
  '1': 'SpotifyPlaylistResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ResponseError', '9': 0, '10': 'error', '17': true},
    const {'1': 'playlists', '3': 2, '4': 3, '5': 11, '6': '.Playlist', '10': 'playlists'},
  ],
  '8': const [
    const {'1': '_error'},
  ],
};

/// Descriptor for `SpotifyPlaylistResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifyPlaylistResponseDescriptor = $convert.base64Decode('ChdTcG90aWZ5UGxheWxpc3RSZXNwb25zZRIpCgVlcnJvchgBIAEoCzIOLlJlc3BvbnNlRXJyb3JIAFIFZXJyb3KIAQESJwoJcGxheWxpc3RzGAIgAygLMgkuUGxheWxpc3RSCXBsYXlsaXN0c0IICgZfZXJyb3I=');
@$core.Deprecated('Use spotifyAlbumResponseDescriptor instead')
const SpotifyAlbumResponse$json = const {
  '1': 'SpotifyAlbumResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ResponseError', '9': 0, '10': 'error', '17': true},
    const {'1': 'albums', '3': 2, '4': 3, '5': 11, '6': '.Album', '10': 'albums'},
  ],
  '8': const [
    const {'1': '_error'},
  ],
};

/// Descriptor for `SpotifyAlbumResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifyAlbumResponseDescriptor = $convert.base64Decode('ChRTcG90aWZ5QWxidW1SZXNwb25zZRIpCgVlcnJvchgBIAEoCzIOLlJlc3BvbnNlRXJyb3JIAFIFZXJyb3KIAQESHgoGYWxidW1zGAIgAygLMgYuQWxidW1SBmFsYnVtc0IICgZfZXJyb3I=');
@$core.Deprecated('Use spotifyArtistResponseDescriptor instead')
const SpotifyArtistResponse$json = const {
  '1': 'SpotifyArtistResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ResponseError', '9': 0, '10': 'error', '17': true},
    const {'1': 'artists', '3': 2, '4': 3, '5': 11, '6': '.Artist', '10': 'artists'},
  ],
  '8': const [
    const {'1': '_error'},
  ],
};

/// Descriptor for `SpotifyArtistResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spotifyArtistResponseDescriptor = $convert.base64Decode('ChVTcG90aWZ5QXJ0aXN0UmVzcG9uc2USKQoFZXJyb3IYASABKAsyDi5SZXNwb25zZUVycm9ySABSBWVycm9yiAEBEiEKB2FydGlzdHMYAiADKAsyBy5BcnRpc3RSB2FydGlzdHNCCAoGX2Vycm9y');
