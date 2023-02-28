
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:quotesapp/UtilsPage.dart';
import 'package:quotesapp/catagoryPage.dart';
import 'package:sqflite/sqflite.dart';
import 'DatabaseHelp/lovePage.dart';
import 'InspirationPage.dart';
import 'SplashScreen.dart';
import 'package:path_provider/path_provider.dart';

import 'fvrPage.dart';
Future<void> copyDatabase() async {
  // Get the directory for storing the database file
  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  String path = join(documentsDirectory.path, 'Quotes.db');

  // Check if the database file already exists
  bool fileExists = await databaseExists(path);

  if (!fileExists) {
    // If the file doesn't exist, copy it from the assets folder
    ByteData data = await rootBundle.load(join('assets/images/Quotes.db'));
    List<int> bytes =
    data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(path).writeAsBytes(bytes);
  }
}

void main()
async{
  WidgetsFlutterBinding.ensureInitialized();

  await copyDatabase();
  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  String path = join(documentsDirectory.path, 'Quotes.db');
  Database database = await openDatabase(path);

  AppUtils.quoteList = await database.rawQuery('SELECT * FROM quotesTable');

  for (var row in AppUtils.quoteList) {
    print(AppUtils.quoteList);
  }
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => MyApp(),
        'category' : (context) => Categories_Page(),
        'isp' : (context) => Inspiration_Page(),
        'love' : (context) => Love_Page(),
        'fvr' : (context) => Fvr_Page(),
      },
    )
  );
}

