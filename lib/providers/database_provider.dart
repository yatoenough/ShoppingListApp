import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

final databaseProvider = FutureProvider<Database>(
  (ref) async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'shopping-list.db');

    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
            'CREATE TABLE ShoppingListItems (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, category TEXT)');
      },
    );

    return database;
  },
);
