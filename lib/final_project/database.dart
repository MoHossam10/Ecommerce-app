import 'package:sqflite/sqflite.dart';

class DatabaseApp
{
  Database db;
  List mylist=[];
  DatabaseApp()
  {
    createDatabase();
  }
  createDatabase()async
  {
    db=await openDatabase(
      'us.db',
      version: 1,
      onCreate: (d,v)async{
       await d.execute(
           'create table user (id integer primary key , name text ,password text)');
       await d.execute(
           'create table cart (id integer primary key , name text , img text, qty integer, price decimal )');
      print('create table');
      },
      onOpen: (d){
        print('open');
        getData(d).then((value) {
          mylist=value;
          //print(value);
        });
      }

    );
  }
  insertData(String name,String password)
  {
    db.transaction((txn) {
      txn.rawInsert('insert into user (name,password) values("$name","$password")').then((value){
        print('inserted $value');
      });
      return null;
    });
  }
  insertToCart(String name,String img,int qty,int price)
  {
    db.transaction((txn) {
      txn.rawInsert('insert into cart (name,img,qty,price) values("$name","$img","$qty","$price")').then((value){
        print('inserted $value');
      });
      return null;
    });
  }
  getrow(String name,String password)
  {
    for(int i=0;i<mylist.length;i++)
      {
        if(mylist[i]['name']==name&&mylist[i]['password']==password)
          {
            return true;
          }
        print(mylist);
      }
  }
  deleteall(String name)
  {
    db.transaction((txn) {
      txn.rawDelete('DELETE FROM user WHERE name = ?', ['$name']).then((value){
        print('inserted $value');
      });
      return null;
    });
  }
  Future<List> getData(Database d)async
  {
    return await d.rawQuery('select * from user');
  }
}
