import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._();

  static Database? _database;

  DatabaseHelper._();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final path = await getDatabasesPath();
    final databasePath = join(path, 'exercise.db');
    return await openDatabase(databasePath, version: 1, onCreate: _createDatabase);
  }

  Future<void> _createDatabase(Database db, int version) async {
    await db.execute('''
      CREATE TABLE exercises (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        exercise TEXT,
        sets INTEGER,
        date TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE user (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        height INTEGER,
        weight INTEGER
      )
    ''');
  }

  Future<int> addExercise(String exercise, int sets, String date) async {
    final db = await instance.database;
    final exerciseMap = {
      'exercise': exercise,
      'sets': sets,
      'date': date,
    };
    return await db.insert('exercises', exerciseMap);
  }

  Future<List<Map<String, dynamic>>> getExercisesByDate(String date) async {
    final db = await instance.database;
    return await db.query('exercises', where: 'date = ?', whereArgs: [date]);
  }

  Future<void> deleteExercise(int id) async {
    final db = await instance.database;
    await db.delete('exercises', where: 'id = ?', whereArgs: [id]);
  }

  Future<void> clearLog() async {
    final db = await instance.database;
    await db.delete('exercises');
  }

  Future<void> setHeight(int height) async {
    final db = await instance.database;
    await db.insert('user', {'height': height}, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> setWeight(int weight) async {
    final db = await instance.database;
    await db.insert('user', {'weight': weight}, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<int?> getHeight() async {
    final db = await instance.database;
    final result = await db.query('user', columns: ['height']);
    if (result.isNotEmpty) {
      return result.first['height'] as int?;
    }
    return null;
  }

  Future<int?> getWeight() async {
    final db = await instance.database;
    final result = await db.query('user', columns: ['weight']);
    if (result.isNotEmpty) {
      return result.first['weight'] as int?;
    }
    return null;
  }
}
