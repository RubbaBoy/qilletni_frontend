import 'package:component_grpc/component_grpc.dart';

class SearchRepository {
  SearchRepository({required this.grpcRepository})
      : _client = grpcRepository.createClient((channel, options) =>
            SpotifySearchServiceClient(channel, options: options));

  final GrpcRepository grpcRepository;
  final SpotifySearchServiceClient _client;

  Future<List<Song>> searchSongs(String query, {int? limit, int? offset}) {
    return _client.searchSongs(SpotifySearchQuery(query: query, limit: limit, offset: offset))
        .then((response) {
          if (response.hasError()) {
            throw response.error;
          }

          return response.songs;
        });
  }

  Future<List<Playlist>> searchPlaylists(String query, {int? limit, int? offset}) {
    return _client.searchPlaylists(SpotifySearchQuery(query: query, limit: limit, offset: offset))
        .then((response) {
          if (response.hasError()) {
            throw response.error;
          }

          return response.playlists;
        });
  }

  Future<List<Album>> searchAlbums(String query, {int? limit, int? offset}) {
    return _client.searchAlbums(SpotifySearchQuery(query: query, limit: limit, offset: offset))
        .then((response) {
          if (response.hasError()) {
            throw response.error;
          }

          return response.albums;
        });
  }

  Future<List<Artist>> searchArtists(String query, {int? limit, int? offset}) {
    return _client.searchArtists(SpotifySearchQuery(query: query, limit: limit, offset: offset))
        .then((response) {
          if (response.hasError()) {
            throw response.error;
          }

          return response.artists;
        });
  }
}
