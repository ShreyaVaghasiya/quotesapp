import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class AppUtils{
  static List<Widget> CarasoulList = [
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              Color(0xff093637),
              Color(0xff44A08D),
            ]
          )
        ),
         child: Center(child: Text("        \"The way to get started is\nto quit talking and begin doing\"",style: GoogleFonts.ptSerif(
           fontWeight: FontWeight.w800,
           fontSize: 18,
           color: CupertinoColors.white
         ),)),
       ),
     ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                colors: [
                  Color(0xff200122),
                  Color(0xff6f0000),
                ]
            )
        ),
        child: Center(child: Text("        \"Your time is limited,so don't\n  waste it living someone else's life. \"",style: GoogleFonts.ptSerif(
            fontWeight: FontWeight.w800,
            fontSize: 18,
            color: CupertinoColors.white
        ),)),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                colors: [
                  Color(0xff2F0743),
                  Color(0xff41295a),
                ]
            )
        ),
        child: Center(child: Text("   \"If life were predictable it would\ncease to belife.\"",style: GoogleFonts.ptSerif(
            fontWeight: FontWeight.w800,
            fontSize: 18,
            color: CupertinoColors.white
        ),)),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                colors: [
                  Color(0xff42275a),
                  Color(0xff734b6d),
                ]
            )
        ),
        child: Center(child: Text(" \"When you have a dream,\n you've got to grab it\"",style: GoogleFonts.ptSerif(
            fontWeight: FontWeight.w800,
            fontSize: 18,
            color: CupertinoColors.white
        ),)),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                colors: [
                  Color(0xff000428),
                  Color(0xff004e92),
                ]
            )
        ),
        child: Center(child: Text("        \"The way to get started is\nto quit talking and begin doing\"",style: GoogleFonts.ptSerif(
            fontWeight: FontWeight.w800,
            fontSize: 18,
            color: CupertinoColors.white
        ),)),
      ),
    ),
    ];
  static List<Map<String,dynamic>> quoteList = [];
  static List<Map<String,dynamic>> fvrList = [];
}