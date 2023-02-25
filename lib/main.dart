
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:quotesapp/catagoryPage.dart';
import 'package:quotesapp/subCategoryPage.dart';

import 'SplashScreen.dart';
void main()
{
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => MyApp(),
        'category' : (context) => Categories_Page(),
        'subcategory' : (context) => subCategory_Page(),
      },
    )
  );
}

