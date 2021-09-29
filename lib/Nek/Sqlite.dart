import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

class Sqlite {
  late Database db;

  late Database database;

  Sqlite._privateConstructor();

  static final Sqlite _instance = Sqlite._privateConstructor();

  factory Sqlite(){
    return _instance;
  }
  
  openSqlite() async {
    // 路径
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'contractData');

    // 创建数据库
    database = await openDatabase(path, version: 1,
    onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute('''
      CREATE TABLE contractData (
        id INTEGER PRIMARY KEY, 
        autoid TEXT, 
        orderid TEXT, 
        type TEXT, 
        wdate TEXT, 
        opentime TEXT, 
        maincoin TEXT, 
        tradcoin TEXT, 
        lever TEXT, 
        paycoin TEXT, 
        number TEXT, 
        price TEXT, 
        openprice TEXT, 
        gas_type TEXT, 
        mobie_type TEXT, 
        version TEXT)''');
    });
  }

  // 增
  Future insert(Map data) async {
    await database.transaction((txn) async {
      int id2 = await txn.rawInsert('INSERT INTO contractData(autoid, orderid, type, wdate, opentime, maincoin, tradcoin, lever, paycoin, number, price, openprice, gas_type, mobie_type, version) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
      [data['autoid'], 
      data['orderid'], 
      data['type'], 
      data['wdate'], 
      data['opentime'], 
      data['maincoin'], 
      data['tradcoin'], 
      data['lever'], 
      data['paycoin'], 
      data['number'], 
      data['price'], 
      data['openprice'],
      data['gas_type'], 
      data['mobie_type'], 
      data['version']]);
      print('inserted2: $id2');
    });
  }

  // 删
  Future<void> delete(String id) async {
    await database.rawDelete('DELETE FROM contractData WHERE autoid = ?', [id]);
  }

  // 改
  Future<void> update(Map data) async {
    int count = await database.rawUpdate('UPDATE contractData SET name = ?, value = ? WHERE name = ?',['updated name', '9876', 'some name']);
    print('updated: $count');
  }

  // 查
  Future<List<Map>> queryAll() async {
    List<Map> list = await database.rawQuery('SELECT * FROM contractData');
    return list;
  }

  // 删除数据库
  Future<int> clear() async {
    return await db.delete('contractData');
  }

  // 关闭数据库
  Future close() async {
    await db.close();
  }
}