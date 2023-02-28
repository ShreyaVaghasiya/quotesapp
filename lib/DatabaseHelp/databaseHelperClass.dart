// import 'package:quotesapp/Model%20class.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// class DatabaseHelper1{
//    static final _databaseName = "Categories.db";
//    static final _databaseVersion = 1;
//    static final tableName1 = 'CategoryTable';
//    static final columnId = "id";
//    static final columnName = "name";
//    static final columnQuotes = "Quotes";
//
//    DatabaseHelper1._privateConstructor();
//
//    static final DatabaseHelper1 instance = DatabaseHelper1._privateConstructor();
//
//    static Database? _database;
//    var result;
//    static Future<Database?> get database async {
//       final databasePath = await getDatabasesPath();
//       final status = await databaseExists(databasePath);
//       if (status != null) {
//          _database = await openDatabase(join(databasePath, 'Categories.db'),
//              onCreate: (database, version) {
//                 return database.execute("CREATE TABLE QuotesModel("
//                     "id INTEGER PRIMARY KEY AUTOINCREMENT, "
//                     "name TEXT, "
//                     "quotes TEXT, "
//                     "pict TEXT )");
//              }, version: _databaseVersion);
//       }
//       return _database;
//    }
//
//    Future<int> insertData()async{
//       final db = await database;
//       int id1 = await db!.rawInsert(
//           'INSERT INTO QuotesModel(name,quotes,pict) VALUES ("Inspiration", "Good, "https://thumbs.dreamstime.com/b/relaxing-seascape-wide-horizon-sky-sea-success-meditation-amazing-sunlight-sun-rays-zen-concept-beautiful-calm-139381803.jpg")');
//      return id1;
//    }
//
//    Future<List<QuotesModel>> getQuotes() async {
//       Database? dbClient = await database;
//       List<Map> list = await dbClient!.rawQuery("SELECT * FROM QuotesModel");
//       List<QuotesModel> QuotesList = [];
//       for (int i = 0; i < list.length; i++) {
//          QuotesList.add((QuotesModel(list[i]["name"], list[i]["quotes"],
//              list[i]["pict"])));
//       }
//       print("Length : ${QuotesList.length}");
//       return QuotesList;
//    }
//
//    Future<int> updateStatic(
//        {Map<String, dynamic>? row, String? table, String? id}) async {
//       Database? db = await database;
//       return await db!
//           .update(table!, row!, where: '$columnId = ?', whereArgs: [id]);
//    }
//
//
// }