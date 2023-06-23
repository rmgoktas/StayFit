import 'dart:async';
import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._(); //database örneği oluşturur instance içine atar. 

  static Database? _database;

  DatabaseHelper._(); //dışarıdan doğrudan erişimi kapatır

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final path = await getDatabasesPath(); 
    final databasePath = join(path, 'exercise.db'); //egzersiz tablosuyla veritabanı yolunu eşler
    return await openDatabase(databasePath, version: 1, onCreate: _createDatabase); //oncreate= veritabanı ilk kez pluşturulduğunda çağırılacak geri arama fonksiyonu
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
  }

  Future<int> addExercise(String exercise, int sets, String date) async {
    final db = await instance.database;
    final exerciseMap = {
      'exercise': exercise,
      'sets': sets,
      'date': date,
    };
    return await db.insert('exercises', exerciseMap); //eklenen veriye unique id verir geri döndürebilmek için
  }

  Future<List<Map<String, dynamic>>> getExercisesByDate(String date) async {
    final db = await instance.database;
    return await db.query('exercises', where: 'date', whereArgs: [date]);
  } //exercises tablosu sorgulanır, whereArgs where'deki tutucuya geçecek ifadeyi belirtir 

  Future<void> deleteExercise(int id) async {
    final db = await instance.database;
    await db.delete('exercises', where: 'id', whereArgs: [id]);
  }

  Future<void> clearLog() async {
    final db = await instance.database;
    await db.delete('exercises');
  }
}
