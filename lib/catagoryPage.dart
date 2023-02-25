import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:google_fonts/google_fonts.dart';
import 'package:quotesapp/Model%20class.dart';

import 'DatabaseHelp/databaseHelperClass.dart';

class Categories_Page extends StatefulWidget {
  const Categories_Page({Key? key}) : super(key: key);

  @override
  State<Categories_Page> createState() => _Categories_PageState();
}

class _Categories_PageState extends State<Categories_Page> {
  final dbHelper1 = DatabaseHelper1.instance;
  String? name;
  String? quotes;
  List myList = [];
  QuotesModel quotesModel = QuotesModel("", "",  null);
  @override
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    List Catagoryname = [
      'Ability',
      "Accuracy",
      "Action",
      "Advice",
      "Ambition",
      "Anger",
      "Dancing",
      "Death"
    ];
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              CupertinoIcons.back, size: 30, color: CupertinoColors.black,)),
        title: Text("Quotes by Category", style: GoogleFonts.ptSerif(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: CupertinoColors.black,

        ),),
        backgroundColor: CupertinoColors.white,
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: Catagoryname.length
        , itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () async {
              print("Insert");

              var response = await get(Uri.parse(
                  "https://upload.wikimedia.org/wikipedia/commons/7/70/Example.png"));
              var bytesFromPict = response.bodyBytes;

              print("bytesFromPict  :::   ${bytesFromPict}");

              name = "Ability";
              quotes =
              "Ability is what we are capable of doing";

              var quotesModel = QuotesModel(
                  name, quotes, bytesFromPict);
              final isInserted = await dbHelper1.insert(quotesModel);
              print('INSERT : $isInserted');


                Navigator.pushNamed(context, 'subcategory', arguments: index);
              },

            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xffE8D5C4),
                radius: 30,
                child: Text(
                  "${Catagoryname[index][0]}${Catagoryname[index][1]}",
                  style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.black
                  ),),
              ), title: Text("${Catagoryname[index]}", style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: CupertinoColors.black
            ),),
            ),
          ),
        );
      }, separatorBuilder: (BuildContext context, int index) {
        return Divider(thickness: 2, color: Colors.black12,);
      },
      ),
    );
  }
}
