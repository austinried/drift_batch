// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Album {
  int get sourceId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String? get artistId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get albumArtist => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  String? get coverArt => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  IList<Song> get songs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumCopyWith<Album> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res, Album>;
  @useResult
  $Res call(
      {int sourceId,
      String id,
      String? artistId,
      String name,
      String? albumArtist,
      DateTime created,
      String? coverArt,
      int? year,
      IList<Song> songs});
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res, $Val extends Album>
    implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = null,
    Object? id = null,
    Object? artistId = freezed,
    Object? name = null,
    Object? albumArtist = freezed,
    Object? created = null,
    Object? coverArt = freezed,
    Object? year = freezed,
    Object? songs = null,
  }) {
    return _then(_value.copyWith(
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      albumArtist: freezed == albumArtist
          ? _value.albumArtist
          : albumArtist // ignore: cast_nullable_to_non_nullable
              as String?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      coverArt: freezed == coverArt
          ? _value.coverArt
          : coverArt // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as IList<Song>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AlbumCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$$_AlbumCopyWith(_$_Album value, $Res Function(_$_Album) then) =
      __$$_AlbumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int sourceId,
      String id,
      String? artistId,
      String name,
      String? albumArtist,
      DateTime created,
      String? coverArt,
      int? year,
      IList<Song> songs});
}

/// @nodoc
class __$$_AlbumCopyWithImpl<$Res> extends _$AlbumCopyWithImpl<$Res, _$_Album>
    implements _$$_AlbumCopyWith<$Res> {
  __$$_AlbumCopyWithImpl(_$_Album _value, $Res Function(_$_Album) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = null,
    Object? id = null,
    Object? artistId = freezed,
    Object? name = null,
    Object? albumArtist = freezed,
    Object? created = null,
    Object? coverArt = freezed,
    Object? year = freezed,
    Object? songs = null,
  }) {
    return _then(_$_Album(
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      albumArtist: freezed == albumArtist
          ? _value.albumArtist
          : albumArtist // ignore: cast_nullable_to_non_nullable
              as String?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      coverArt: freezed == coverArt
          ? _value.coverArt
          : coverArt // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as IList<Song>,
    ));
  }
}

/// @nodoc

class _$_Album extends _Album {
  const _$_Album(
      {required this.sourceId,
      required this.id,
      this.artistId,
      required this.name,
      this.albumArtist,
      required this.created,
      this.coverArt,
      this.year,
      this.songs = const IListConst([])})
      : super._();

  @override
  final int sourceId;
  @override
  final String id;
  @override
  final String? artistId;
  @override
  final String name;
  @override
  final String? albumArtist;
  @override
  final DateTime created;
  @override
  final String? coverArt;
  @override
  final int? year;
  @override
  @JsonKey()
  final IList<Song> songs;

  @override
  String toString() {
    return 'Album(sourceId: $sourceId, id: $id, artistId: $artistId, name: $name, albumArtist: $albumArtist, created: $created, coverArt: $coverArt, year: $year, songs: $songs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Album &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.albumArtist, albumArtist) ||
                other.albumArtist == albumArtist) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.coverArt, coverArt) ||
                other.coverArt == coverArt) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality().equals(other.songs, songs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      sourceId,
      id,
      artistId,
      name,
      albumArtist,
      created,
      coverArt,
      year,
      const DeepCollectionEquality().hash(songs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlbumCopyWith<_$_Album> get copyWith =>
      __$$_AlbumCopyWithImpl<_$_Album>(this, _$identity);
}

abstract class _Album extends Album {
  const factory _Album(
      {required final int sourceId,
      required final String id,
      final String? artistId,
      required final String name,
      final String? albumArtist,
      required final DateTime created,
      final String? coverArt,
      final int? year,
      final IList<Song> songs}) = _$_Album;
  const _Album._() : super._();

  @override
  int get sourceId;
  @override
  String get id;
  @override
  String? get artistId;
  @override
  String get name;
  @override
  String? get albumArtist;
  @override
  DateTime get created;
  @override
  String? get coverArt;
  @override
  int? get year;
  @override
  IList<Song> get songs;
  @override
  @JsonKey(ignore: true)
  _$$_AlbumCopyWith<_$_Album> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Song {
  int get sourceId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String? get albumId => throw _privateConstructorUsedError;
  String? get artistId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get artist => throw _privateConstructorUsedError;
  String? get album => throw _privateConstructorUsedError;
  Duration? get duration => throw _privateConstructorUsedError;
  int? get track => throw _privateConstructorUsedError;
  int? get disc => throw _privateConstructorUsedError;
  bool get isDownloaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SongCopyWith<Song> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongCopyWith<$Res> {
  factory $SongCopyWith(Song value, $Res Function(Song) then) =
      _$SongCopyWithImpl<$Res, Song>;
  @useResult
  $Res call(
      {int sourceId,
      String id,
      String? albumId,
      String? artistId,
      String title,
      String? artist,
      String? album,
      Duration? duration,
      int? track,
      int? disc,
      bool isDownloaded});
}

/// @nodoc
class _$SongCopyWithImpl<$Res, $Val extends Song>
    implements $SongCopyWith<$Res> {
  _$SongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = null,
    Object? id = null,
    Object? albumId = freezed,
    Object? artistId = freezed,
    Object? title = null,
    Object? artist = freezed,
    Object? album = freezed,
    Object? duration = freezed,
    Object? track = freezed,
    Object? disc = freezed,
    Object? isDownloaded = null,
  }) {
    return _then(_value.copyWith(
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as int?,
      disc: freezed == disc
          ? _value.disc
          : disc // ignore: cast_nullable_to_non_nullable
              as int?,
      isDownloaded: null == isDownloaded
          ? _value.isDownloaded
          : isDownloaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SongCopyWith<$Res> implements $SongCopyWith<$Res> {
  factory _$$_SongCopyWith(_$_Song value, $Res Function(_$_Song) then) =
      __$$_SongCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int sourceId,
      String id,
      String? albumId,
      String? artistId,
      String title,
      String? artist,
      String? album,
      Duration? duration,
      int? track,
      int? disc,
      bool isDownloaded});
}

/// @nodoc
class __$$_SongCopyWithImpl<$Res> extends _$SongCopyWithImpl<$Res, _$_Song>
    implements _$$_SongCopyWith<$Res> {
  __$$_SongCopyWithImpl(_$_Song _value, $Res Function(_$_Song) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = null,
    Object? id = null,
    Object? albumId = freezed,
    Object? artistId = freezed,
    Object? title = null,
    Object? artist = freezed,
    Object? album = freezed,
    Object? duration = freezed,
    Object? track = freezed,
    Object? disc = freezed,
    Object? isDownloaded = null,
  }) {
    return _then(_$_Song(
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as int?,
      disc: freezed == disc
          ? _value.disc
          : disc // ignore: cast_nullable_to_non_nullable
              as int?,
      isDownloaded: null == isDownloaded
          ? _value.isDownloaded
          : isDownloaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Song extends _Song {
  const _$_Song(
      {required this.sourceId,
      required this.id,
      this.albumId,
      this.artistId,
      required this.title,
      this.artist,
      this.album,
      this.duration,
      this.track,
      this.disc,
      this.isDownloaded = false})
      : super._();

  @override
  final int sourceId;
  @override
  final String id;
  @override
  final String? albumId;
  @override
  final String? artistId;
  @override
  final String title;
  @override
  final String? artist;
  @override
  final String? album;
  @override
  final Duration? duration;
  @override
  final int? track;
  @override
  final int? disc;
  @override
  @JsonKey()
  final bool isDownloaded;

  @override
  String toString() {
    return 'Song(sourceId: $sourceId, id: $id, albumId: $albumId, artistId: $artistId, title: $title, artist: $artist, album: $album, duration: $duration, track: $track, disc: $disc, isDownloaded: $isDownloaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Song &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.album, album) || other.album == album) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.track, track) || other.track == track) &&
            (identical(other.disc, disc) || other.disc == disc) &&
            (identical(other.isDownloaded, isDownloaded) ||
                other.isDownloaded == isDownloaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sourceId, id, albumId, artistId,
      title, artist, album, duration, track, disc, isDownloaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SongCopyWith<_$_Song> get copyWith =>
      __$$_SongCopyWithImpl<_$_Song>(this, _$identity);
}

abstract class _Song extends Song {
  const factory _Song(
      {required final int sourceId,
      required final String id,
      final String? albumId,
      final String? artistId,
      required final String title,
      final String? artist,
      final String? album,
      final Duration? duration,
      final int? track,
      final int? disc,
      final bool isDownloaded}) = _$_Song;
  const _Song._() : super._();

  @override
  int get sourceId;
  @override
  String get id;
  @override
  String? get albumId;
  @override
  String? get artistId;
  @override
  String get title;
  @override
  String? get artist;
  @override
  String? get album;
  @override
  Duration? get duration;
  @override
  int? get track;
  @override
  int? get disc;
  @override
  bool get isDownloaded;
  @override
  @JsonKey(ignore: true)
  _$$_SongCopyWith<_$_Song> get copyWith => throw _privateConstructorUsedError;
}
