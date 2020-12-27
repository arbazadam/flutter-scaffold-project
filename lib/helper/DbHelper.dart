import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import '../models/Dogs.dart';

class DbHelper {
  static Future<sql.Database> getDatabase() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(path.join(dbPath, 'app_db.db'), version: 1,
        onCreate: (db, version) {
     return db.execute(
          'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)');
    });
  }

  static Future<void> insertToDb(Dogs d) async {
    final db = await DbHelper.getDatabase();
   final val= await db.insert('dogs', d.toMap(),
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
        print('The value is $val');
  }

  static Future<void> getFromDb() async {
    final db = await DbHelper.getDatabase();
    final maps = await db.query('dogs');
    final list=List.generate(
        maps.length,
        (index) => Dogs(
            id: maps[index]['id'],
            name: maps[index]['name'],
            age: maps[index]['age']));
  print('the list value is $list');
  }
  
}
