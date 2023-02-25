import 'package:quotesapp/Model%20class.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class DatabaseHelper1{
   static final _databaseName = "Categories.db";
   static final _databaseVersion = 1;
   static final tableName1 = 'CategoryTable';
   static final columnId = "id";
   static final columnName = "name";
   static final columnQuotes = "Quotes";

   DatabaseHelper1._privateConstructor();

   static final DatabaseHelper1 instance = DatabaseHelper1._privateConstructor();

   static Database? _database;
   var result;
   static Future<Database?> get database async {
      final databasePath = await getDatabasesPath();
      final status = await databaseExists(databasePath);
      if (status != null) {
         _database = await openDatabase(join(databasePath, 'Categories.db'),
             onCreate: (database, version) {
                return database.execute("CREATE TABLE QuotesModel("
                    "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                    "name TEXT, "
                    "quotes TEXT, "
                    "pict BLOB )");
             }, version: _databaseVersion);
      }
      return _database;
   }
   // Future<bool> insert(Map<String, dynamic> row) async {
   //    final db = await database;
   //    try {
   //       await db!.insert(tableName1,row);
   //    } catch(stackTrace){
   //       print(stackTrace);
   //    }
   //    return true;
   // }
   //
   // Future <List<Map<String, dynamic>>> queryAllRows() async {
   //    Database? db = await database;
   //    result = await db!.query(tableName1);
   //    return result.toList();
   // }
   Future<bool> insert(QuotesModel quotesModel) async {
      final db = await database;
      try {
         await db!.insert("QuotesModel", quotesModel.toMap());
      } catch (e) {
         rethrow;
      }
      return true;
   }

   Future<List<QuotesModel>> getQuotes() async {
      Database? dbClient = await database;
      List<Map> list = await dbClient!.rawQuery("SELECT * FROM QuotesModel");
      List<QuotesModel> QuotesList = [];
      for (int i = 0; i < list.length; i++) {
         QuotesList.add((QuotesModel(list[i]["name"], list[i]["quotes"],
             list[i]["pict"])));
      }
      print("Length : ${QuotesList.length}");
      return QuotesList;
   }

   Future<int> updateStatic(
       {Map<String, dynamic>? row, String? table, String? id}) async {
      Database? db = await database;
      return await db!
          .update(table!, row!, where: '$columnId = ?', whereArgs: [id]);
   }


}