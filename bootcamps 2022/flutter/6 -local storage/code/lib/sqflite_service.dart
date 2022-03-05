import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqfLiteService {
  // unique database
  static Database? _db;

  Future<Database> get getDatabase async {
    if (_db != null) {
      return _db!;
    } else {
      _db = await initDatabase();
      return _db!;
    }
  }

  // create db file (init)
  Future<Database> initDatabase() async {
    String databasePath = await getDatabasesPath();
    var path = join(databasePath, 'database.db');

    return await openDatabase(path, version: 1, onCreate: _createTables);
  }

  // create tables
  void _createTables(Database db, int version) async {
    await db.execute("CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT, isDone INTEGER)");
  }

  // CRUD date (create, read, update, delete)
  Future<List<Map<String, Object?>>> getTasks() async {
    final database = await getDatabase;
    if (database.isOpen) {
      return await database.rawQuery("SELECT * from tasks");
    }
    return [];
  }

  Future<void> createTask(int id, String title, bool isDone) async {
    final database = await getDatabase;
    if (database.isOpen) {
      await database.insert(
        'tasks',
        {'id': id, 'title': title, 'isDone': isDone ? 1 : 0},
      );
    }
  }

  Future<void> updateTask(int id, String title, bool isDone) async {
    final database = await getDatabase;
    if (database.isOpen) {
      await database.update(
        'tasks',
        {'id': id, 'title': title, 'isDone': isDone ? 1 : 0},
      );
    }
  }

  Future<List<Map<String, Object?>>> getTask(int id) async {
    final database = await getDatabase;
    if (database.isOpen) {
      return await database.query(
        'tasks',
        columns: ['id'],
        where: "=?",
        whereArgs: [id],
      );
    }
    return [];
  }

  Future<List<Map<String, Object?>>> getTaskAnotherVersion(int id, bool isDone) async {
    final database = await getDatabase;
    if (database.isOpen) {
      database.rawQuery("UPDATE SET isDone=${isDone ? 1 : 0} WHERE id=$id");
    }
    return [];
  }
}
