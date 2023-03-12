import 'package:drift/drift.dart';
import 'package:drift/isolate.dart';
import 'package:drift_batch/database.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';

import 'models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MyDatabase db = MyDatabase();

  @override
  void initState() {
    super.initState();
  }

  void _incrementCounter() async {
    var album = Album(
      sourceId: 0,
      id: 'id',
      name: 'test',
      created: DateTime.now(),
      songs: IList([
        for (var i = 0; i < 30; i++)
          Song(sourceId: 0, id: i.toString(), title: 'test'),
      ]),
    );

    await _saveAlbum(db, album);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

Future<void> _saveAlbum(MyDatabase db, Album album) {
  return db.computeWithDatabase(
    connect: MyDatabase.connection,
    computation: (db) async {
      await db.batch((batch) {
        batch.insertAllOnConflictUpdate(db.albums, [album.toInsertable()]);
        batch.insertAllOnConflictUpdate(
          db.songs,
          album.songs.map((e) => e.toInsertable()),
        );

        final songIds = {for (var a in album.songs) a.id};
        batch.deleteWhere(
          db.songs,
          (tbl) =>
              tbl.sourceId.equals(album.sourceId) &
              tbl.albumId.equals(album.id) &
              tbl.id.isNotIn(songIds),
        );
      });
    },
  );
}
