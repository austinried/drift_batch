// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class Albums extends Table with TableInfo<Albums, Album> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Albums(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _sourceIdMeta =
      const VerificationMeta('sourceId');
  late final GeneratedColumn<int> sourceId = GeneratedColumn<int>(
      'source_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _artistIdMeta =
      const VerificationMeta('artistId');
  late final GeneratedColumn<String> artistId = GeneratedColumn<String>(
      'artist_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _albumArtistMeta =
      const VerificationMeta('albumArtist');
  late final GeneratedColumn<String> albumArtist = GeneratedColumn<String>(
      'album_artist', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _createdMeta =
      const VerificationMeta('created');
  late final GeneratedColumn<DateTime> created = GeneratedColumn<DateTime>(
      'created', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _coverArtMeta =
      const VerificationMeta('coverArt');
  late final GeneratedColumn<String> coverArt = GeneratedColumn<String>(
      'cover_art', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
      'year', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      $customConstraints:
          'NOT NULL DEFAULT (strftime(\'%s\', CURRENT_TIMESTAMP))',
      defaultValue:
          const CustomExpression('strftime(\'%s\', CURRENT_TIMESTAMP)'));
  @override
  List<GeneratedColumn> get $columns => [
        sourceId,
        id,
        artistId,
        name,
        albumArtist,
        created,
        coverArt,
        year,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'albums';
  @override
  String get actualTableName => 'albums';
  @override
  VerificationContext validateIntegrity(Insertable<Album> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('source_id')) {
      context.handle(_sourceIdMeta,
          sourceId.isAcceptableOrUnknown(data['source_id']!, _sourceIdMeta));
    } else if (isInserting) {
      context.missing(_sourceIdMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('artist_id')) {
      context.handle(_artistIdMeta,
          artistId.isAcceptableOrUnknown(data['artist_id']!, _artistIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('album_artist')) {
      context.handle(
          _albumArtistMeta,
          albumArtist.isAcceptableOrUnknown(
              data['album_artist']!, _albumArtistMeta));
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created']!, _createdMeta));
    } else if (isInserting) {
      context.missing(_createdMeta);
    }
    if (data.containsKey('cover_art')) {
      context.handle(_coverArtMeta,
          coverArt.isAcceptableOrUnknown(data['cover_art']!, _coverArtMeta));
    }
    if (data.containsKey('year')) {
      context.handle(
          _yearMeta, year.isAcceptableOrUnknown(data['year']!, _yearMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {sourceId, id};
  @override
  Album map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Album(
      sourceId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}source_id'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      artistId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}artist_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      albumArtist: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}album_artist']),
      created: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created'])!,
      coverArt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cover_art']),
      year: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}year']),
    );
  }

  @override
  Albums createAlias(String alias) {
    return Albums(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const ['PRIMARY KEY(source_id, id)'];
  @override
  bool get dontWriteConstraints => true;
}

class AlbumsCompanion extends UpdateCompanion<Album> {
  final Value<int> sourceId;
  final Value<String> id;
  final Value<String?> artistId;
  final Value<String> name;
  final Value<String?> albumArtist;
  final Value<DateTime> created;
  final Value<String?> coverArt;
  final Value<int?> year;
  final Value<DateTime> updatedAt;
  const AlbumsCompanion({
    this.sourceId = const Value.absent(),
    this.id = const Value.absent(),
    this.artistId = const Value.absent(),
    this.name = const Value.absent(),
    this.albumArtist = const Value.absent(),
    this.created = const Value.absent(),
    this.coverArt = const Value.absent(),
    this.year = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  AlbumsCompanion.insert({
    required int sourceId,
    required String id,
    this.artistId = const Value.absent(),
    required String name,
    this.albumArtist = const Value.absent(),
    required DateTime created,
    this.coverArt = const Value.absent(),
    this.year = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : sourceId = Value(sourceId),
        id = Value(id),
        name = Value(name),
        created = Value(created);
  static Insertable<Album> custom({
    Expression<int>? sourceId,
    Expression<String>? id,
    Expression<String>? artistId,
    Expression<String>? name,
    Expression<String>? albumArtist,
    Expression<DateTime>? created,
    Expression<String>? coverArt,
    Expression<int>? year,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (sourceId != null) 'source_id': sourceId,
      if (id != null) 'id': id,
      if (artistId != null) 'artist_id': artistId,
      if (name != null) 'name': name,
      if (albumArtist != null) 'album_artist': albumArtist,
      if (created != null) 'created': created,
      if (coverArt != null) 'cover_art': coverArt,
      if (year != null) 'year': year,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  AlbumsCompanion copyWith(
      {Value<int>? sourceId,
      Value<String>? id,
      Value<String?>? artistId,
      Value<String>? name,
      Value<String?>? albumArtist,
      Value<DateTime>? created,
      Value<String?>? coverArt,
      Value<int?>? year,
      Value<DateTime>? updatedAt}) {
    return AlbumsCompanion(
      sourceId: sourceId ?? this.sourceId,
      id: id ?? this.id,
      artistId: artistId ?? this.artistId,
      name: name ?? this.name,
      albumArtist: albumArtist ?? this.albumArtist,
      created: created ?? this.created,
      coverArt: coverArt ?? this.coverArt,
      year: year ?? this.year,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (sourceId.present) {
      map['source_id'] = Variable<int>(sourceId.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (artistId.present) {
      map['artist_id'] = Variable<String>(artistId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (albumArtist.present) {
      map['album_artist'] = Variable<String>(albumArtist.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    if (coverArt.present) {
      map['cover_art'] = Variable<String>(coverArt.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AlbumsCompanion(')
          ..write('sourceId: $sourceId, ')
          ..write('id: $id, ')
          ..write('artistId: $artistId, ')
          ..write('name: $name, ')
          ..write('albumArtist: $albumArtist, ')
          ..write('created: $created, ')
          ..write('coverArt: $coverArt, ')
          ..write('year: $year, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class Songs extends Table with TableInfo<Songs, Song> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Songs(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _sourceIdMeta =
      const VerificationMeta('sourceId');
  late final GeneratedColumn<int> sourceId = GeneratedColumn<int>(
      'source_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _albumIdMeta =
      const VerificationMeta('albumId');
  late final GeneratedColumn<String> albumId = GeneratedColumn<String>(
      'album_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _artistIdMeta =
      const VerificationMeta('artistId');
  late final GeneratedColumn<String> artistId = GeneratedColumn<String>(
      'artist_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _albumMeta = const VerificationMeta('album');
  late final GeneratedColumn<String> album = GeneratedColumn<String>(
      'album', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _artistMeta = const VerificationMeta('artist');
  late final GeneratedColumn<String> artist = GeneratedColumn<String>(
      'artist', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _durationMeta =
      const VerificationMeta('duration');
  late final GeneratedColumnWithTypeConverter<Duration?, int> duration =
      GeneratedColumn<int>('duration', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              $customConstraints: '')
          .withConverter<Duration?>(Songs.$converterdurationn);
  static const VerificationMeta _trackMeta = const VerificationMeta('track');
  late final GeneratedColumn<int> track = GeneratedColumn<int>(
      'track', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _discMeta = const VerificationMeta('disc');
  late final GeneratedColumn<int> disc = GeneratedColumn<int>(
      'disc', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _isDownloadedMeta =
      const VerificationMeta('isDownloaded');
  late final GeneratedColumn<bool> isDownloaded = GeneratedColumn<bool>(
      'is_downloaded', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression('0'));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      $customConstraints:
          'NOT NULL DEFAULT (strftime(\'%s\', CURRENT_TIMESTAMP))',
      defaultValue:
          const CustomExpression('strftime(\'%s\', CURRENT_TIMESTAMP)'));
  @override
  List<GeneratedColumn> get $columns => [
        sourceId,
        id,
        albumId,
        artistId,
        title,
        album,
        artist,
        duration,
        track,
        disc,
        isDownloaded,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? 'songs';
  @override
  String get actualTableName => 'songs';
  @override
  VerificationContext validateIntegrity(Insertable<Song> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('source_id')) {
      context.handle(_sourceIdMeta,
          sourceId.isAcceptableOrUnknown(data['source_id']!, _sourceIdMeta));
    } else if (isInserting) {
      context.missing(_sourceIdMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('album_id')) {
      context.handle(_albumIdMeta,
          albumId.isAcceptableOrUnknown(data['album_id']!, _albumIdMeta));
    }
    if (data.containsKey('artist_id')) {
      context.handle(_artistIdMeta,
          artistId.isAcceptableOrUnknown(data['artist_id']!, _artistIdMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('album')) {
      context.handle(
          _albumMeta, album.isAcceptableOrUnknown(data['album']!, _albumMeta));
    }
    if (data.containsKey('artist')) {
      context.handle(_artistMeta,
          artist.isAcceptableOrUnknown(data['artist']!, _artistMeta));
    }
    context.handle(_durationMeta, const VerificationResult.success());
    if (data.containsKey('track')) {
      context.handle(
          _trackMeta, track.isAcceptableOrUnknown(data['track']!, _trackMeta));
    }
    if (data.containsKey('disc')) {
      context.handle(
          _discMeta, disc.isAcceptableOrUnknown(data['disc']!, _discMeta));
    }
    if (data.containsKey('is_downloaded')) {
      context.handle(
          _isDownloadedMeta,
          isDownloaded.isAcceptableOrUnknown(
              data['is_downloaded']!, _isDownloadedMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {sourceId, id};
  @override
  Song map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Song(
      sourceId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}source_id'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      albumId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}album_id']),
      artistId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}artist_id']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      artist: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}artist']),
      album: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}album']),
      duration: Songs.$converterdurationn.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}duration'])),
      track: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}track']),
      disc: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}disc']),
      isDownloaded: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_downloaded'])!,
    );
  }

  @override
  Songs createAlias(String alias) {
    return Songs(attachedDatabase, alias);
  }

  static TypeConverter<Duration, int> $converterduration =
      const DurationSecondsConverter();
  static TypeConverter<Duration?, int?> $converterdurationn =
      NullAwareTypeConverter.wrap($converterduration);
  @override
  List<String> get customConstraints => const ['PRIMARY KEY(source_id, id)'];
  @override
  bool get dontWriteConstraints => true;
}

class SongsCompanion extends UpdateCompanion<Song> {
  final Value<int> sourceId;
  final Value<String> id;
  final Value<String?> albumId;
  final Value<String?> artistId;
  final Value<String> title;
  final Value<String?> album;
  final Value<String?> artist;
  final Value<Duration?> duration;
  final Value<int?> track;
  final Value<int?> disc;
  final Value<bool> isDownloaded;
  final Value<DateTime> updatedAt;
  const SongsCompanion({
    this.sourceId = const Value.absent(),
    this.id = const Value.absent(),
    this.albumId = const Value.absent(),
    this.artistId = const Value.absent(),
    this.title = const Value.absent(),
    this.album = const Value.absent(),
    this.artist = const Value.absent(),
    this.duration = const Value.absent(),
    this.track = const Value.absent(),
    this.disc = const Value.absent(),
    this.isDownloaded = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  SongsCompanion.insert({
    required int sourceId,
    required String id,
    this.albumId = const Value.absent(),
    this.artistId = const Value.absent(),
    required String title,
    this.album = const Value.absent(),
    this.artist = const Value.absent(),
    this.duration = const Value.absent(),
    this.track = const Value.absent(),
    this.disc = const Value.absent(),
    this.isDownloaded = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : sourceId = Value(sourceId),
        id = Value(id),
        title = Value(title);
  static Insertable<Song> custom({
    Expression<int>? sourceId,
    Expression<String>? id,
    Expression<String>? albumId,
    Expression<String>? artistId,
    Expression<String>? title,
    Expression<String>? album,
    Expression<String>? artist,
    Expression<int>? duration,
    Expression<int>? track,
    Expression<int>? disc,
    Expression<bool>? isDownloaded,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (sourceId != null) 'source_id': sourceId,
      if (id != null) 'id': id,
      if (albumId != null) 'album_id': albumId,
      if (artistId != null) 'artist_id': artistId,
      if (title != null) 'title': title,
      if (album != null) 'album': album,
      if (artist != null) 'artist': artist,
      if (duration != null) 'duration': duration,
      if (track != null) 'track': track,
      if (disc != null) 'disc': disc,
      if (isDownloaded != null) 'is_downloaded': isDownloaded,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  SongsCompanion copyWith(
      {Value<int>? sourceId,
      Value<String>? id,
      Value<String?>? albumId,
      Value<String?>? artistId,
      Value<String>? title,
      Value<String?>? album,
      Value<String?>? artist,
      Value<Duration?>? duration,
      Value<int?>? track,
      Value<int?>? disc,
      Value<bool>? isDownloaded,
      Value<DateTime>? updatedAt}) {
    return SongsCompanion(
      sourceId: sourceId ?? this.sourceId,
      id: id ?? this.id,
      albumId: albumId ?? this.albumId,
      artistId: artistId ?? this.artistId,
      title: title ?? this.title,
      album: album ?? this.album,
      artist: artist ?? this.artist,
      duration: duration ?? this.duration,
      track: track ?? this.track,
      disc: disc ?? this.disc,
      isDownloaded: isDownloaded ?? this.isDownloaded,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (sourceId.present) {
      map['source_id'] = Variable<int>(sourceId.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (albumId.present) {
      map['album_id'] = Variable<String>(albumId.value);
    }
    if (artistId.present) {
      map['artist_id'] = Variable<String>(artistId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (album.present) {
      map['album'] = Variable<String>(album.value);
    }
    if (artist.present) {
      map['artist'] = Variable<String>(artist.value);
    }
    if (duration.present) {
      final converter = Songs.$converterdurationn;
      map['duration'] = Variable<int>(converter.toSql(duration.value));
    }
    if (track.present) {
      map['track'] = Variable<int>(track.value);
    }
    if (disc.present) {
      map['disc'] = Variable<int>(disc.value);
    }
    if (isDownloaded.present) {
      map['is_downloaded'] = Variable<bool>(isDownloaded.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SongsCompanion(')
          ..write('sourceId: $sourceId, ')
          ..write('id: $id, ')
          ..write('albumId: $albumId, ')
          ..write('artistId: $artistId, ')
          ..write('title: $title, ')
          ..write('album: $album, ')
          ..write('artist: $artist, ')
          ..write('duration: $duration, ')
          ..write('track: $track, ')
          ..write('disc: $disc, ')
          ..write('isDownloaded: $isDownloaded, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final Albums albums = Albums(this);
  late final Index albumsSourceId = Index('albums_source_id',
      'CREATE INDEX albums_source_id ON albums (source_id)');
  late final Index albumsSourceIdArtistIdIdx = Index(
      'albums_source_id_artist_id_idx',
      'CREATE INDEX albums_source_id_artist_id_idx ON albums (source_id, artist_id)');
  late final Songs songs = Songs(this);
  late final Index songsSourceIdAlbumIdIdx = Index(
      'songs_source_id_album_id_idx',
      'CREATE INDEX songs_source_id_album_id_idx ON songs (source_id, album_id)');
  late final Index songsSourceIdArtistIdIdx = Index(
      'songs_source_id_artist_id_idx',
      'CREATE INDEX songs_source_id_artist_id_idx ON songs (source_id, artist_id)');
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        albums,
        albumsSourceId,
        albumsSourceIdArtistIdIdx,
        songs,
        songsSourceIdAlbumIdIdx,
        songsSourceIdArtistIdIdx
      ];
}
