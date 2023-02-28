import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotesapp/UtilsPage.dart';
class Inspiration_Page extends StatefulWidget {
  const Inspiration_Page({Key? key}) : super(key: key);

  @override
  State<Inspiration_Page> createState() => _Inspiration_PageState();
}

class _Inspiration_PageState extends State<Inspiration_Page> {
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
        children: List.generate(3, (index) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: h/3.5,
                width: w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                 gradient: LinearGradient(
                   colors: [
                     Color(0xff000428),
                     Color(0xff004e92),
                   ]
                 )
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("${AppUtils.quoteList[index]['quotes']}",style: GoogleFonts.lato(
                      fontSize: 20,
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.w700,
                    ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: h/20,
              width: w,
              decoration: BoxDecoration(
                color: CupertinoColors.white,

                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Icon(CupertinoIcons.circle_grid_hex_fill,color: CupertinoColors.activeOrange,size: 25,),
                  Icon(CupertinoIcons.down_arrow,color: CupertinoColors.activeGreen,size: 25,),
                  Icon(CupertinoIcons.share_solid,color: CupertinoColors.systemRed,size: 25,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        AppUtils.fvrList.add(AppUtils.quoteList[index]);
                        print(AppUtils.fvrList);
                      });
                    },
                      child: Icon(CupertinoIcons.star_fill,color: CupertinoColors.activeBlue,size: 25,)),
                ],
              ),
            )
          ],
        )),
      ),
      backgroundColor: CupertinoColors.white,
    );
  }
}
