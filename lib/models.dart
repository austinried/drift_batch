import 'package:drift/drift.dart' show Value;
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'database.dart';

part 'models.freezed.dart';

@freezed
class Album with _$Album {
  const Album._();

  const factory Album({
    required int sourceId,
    required String id,
    String? artistId,
    required String name,
    String? albumArtist,
    required DateTime created,
    String? coverArt,
    int? year,
    @Default(IListConst([])) IList<Song> songs,
  }) = _Album;

  @override
  AlbumsCompanion toInsertable() {
    return AlbumsCompanion.insert(
      sourceId: sourceId,
      id: id,
      artistId: Value(artistId),
      name: name,
      albumArtist: Value(albumArtist),
      created: created,
      coverArt: Value(coverArt),
      year: Value(year),
    );
  }
}

@freezed
class Song with _$Song {
  const Song._();

  const factory Song({
    required int sourceId,
    required String id,
    String? albumId,
    String? artistId,
    required String title,
    String? artist,
    String? album,
    Duration? duration,
    int? track,
    int? disc,
    @Default(false) bool isDownloaded,
  }) = _Song;

  @override
  SongsCompanion toInsertable() {
    return SongsCompanion.insert(
      sourceId: sourceId,
      id: id,
      albumId: Value(albumId),
      artistId: Value(artistId),
      title: title,
      artist: Value(artist),
      album: Value(album),
      duration: Value(duration),
      track: Value(track),
      disc: Value(disc),
      isDownloaded: Value(isDownloaded),
    );
  }
}
