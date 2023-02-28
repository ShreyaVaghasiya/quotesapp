import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'UtilsPage.dart';
class Fvr_Page extends StatefulWidget {
  const Fvr_Page({Key? key}) : super(key: key);

  @override
  State<Fvr_Page> createState() => _Fvr_PageState();
}

class _Fvr_PageState extends State<Fvr_Page> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.white,
        leading: InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Icon(CupertinoIcons.back,size: 30,color: CupertinoColors.black,)),
        elevation: 0,
      ),
      body: ListView(
        children: List.generate(AppUtils.fvrList.length ,(index) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: h/3.5,
            width: w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular((10)),
                gradient: LinearGradient(
                    colors: [
                      Color(0xff403A3E),
                      Color(0xffBE5869),
                    ]
                )
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("${AppUtils.fvrList[index]['quotes']}",style: GoogleFonts.lato(
                  fontSize: 20,
                  color: CupertinoColors.white,
                  fontWeight: FontWeight.w700,
                ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
        )),
      ),
      backgroundColor: CupertinoColors.white,
    );
  }
}
