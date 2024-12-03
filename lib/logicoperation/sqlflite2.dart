import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'insertdataintable.dart';
class SqlDb {
 // insert obg=insert();
  static Database? _db;
  String path="";
  Future<Database?> get db async {
    if (_db == null) {
      _db = await intialDb();
      return _db;
    }
    else {
      return _db;
    }
  }

  intialDb() async {
    String databasepath = await getDatabasesPath();
    path = join(databasepath, 'codecan.db');
    Database mydb = await openDatabase(
        path, onCreate: _onCreate, version: 45, onUpgrade: _onUpgrade);
    return mydb;
  }

  _onUpgrade(Database db, int oldversion, int newversion)async {
    print("onUpgrade =====================================");
    await deleteDatabase(path);
    _onCreate( db ,newversion);
  }

  _onCreate(Database db , int version) async {
    // await db.execute(''' CREATE TABLE "notes" ( "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, "note" TEXT NOT NULL ) ''') ;
    db.execute('''
    CREATE TABLE "questiondata" (
    "id" INTEGER,
    "department" Text,
    "question" TEXT NOT NULL,
    "answer" TEXT,
    "grade"  INTEGER
    )
    ''');
    print(" onCreate =====================================") ;
    insert obg=insert();
    obg.inserttables();
  }


  readData(String sql) async {
    Database? mydb = await db;
    List<Map> response = await mydb!.rawQuery(sql);
    return response;
  }

  inserData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawInsert(sql);
    return response;
  }

  updateData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawUpdate(sql);
    return response;
  }

  deleteData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawDelete(sql);
    return response;
  } // SELECT // DELETE // UPDATE // INSERT }
}