// To open the database, add these imports to the existing file defining the
// database class. They are used to open the database.
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

// ignore: unused_import
import 'converters.dart';
// ignore: unused_import
import 'models.dart';

part 'database.g.dart';

@DriftDatabase(include: {'tables.drift'})
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());
  MyDatabase.connection(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      beforeOpen: (details) async {
        await customStatement('PRAGMA foreign_keys = ON');
      },
    );
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'subtracks.sqlite'));
    return NativeDatabase.createInBackground(file, logStatements: true);
  });
}
