import 'package:flutter/material.dart';
import 'package:flutter_tasarim_odevi/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;
    print("Screen Height : $screenHeight");
    print("Screen Width : $screenWidth");

    var d = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
        title: Text("Winter", style: TextStyle(color: textColor1, fontFamily: "DancingScript",fontSize: screenWidth/16,fontWeight: FontWeight.bold),),
        backgroundColor: appBarBackgroundColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: screenHeight/65),
            child: Text(d!.snowboard,style: TextStyle(fontSize: 30,color: textColor1,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset("images/snowboard.png",height: 200,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(contents: d.snowboardResimli),
                Chip(contents: d.snowboardKirmizi),
                Chip(contents: d.snowboardYesil),
                Chip(contents: d.snowboardMavi),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(d.teslimat,style: TextStyle(fontSize: 22,color: textColor2,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(d.aceleEt,style: TextStyle(fontSize: 22,color: textColor1,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
                Text(d.basla,style: TextStyle(fontSize: 22,color: textColor2,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Text(d.fiyat,style: TextStyle(fontSize: 40,color: textColor2,fontWeight: FontWeight.bold),),
                const Spacer(),
                SizedBox(width: screenWidth/2, height: screenHeight/15,
                  child: TextButton(onPressed: (){},
                      child: Text(d.buton,style: TextStyle(color: textColor2),),
                      style: TextButton.styleFrom(
                          backgroundColor: buttonBackgroundColor,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  String contents;
  Chip({required this.contents});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text(contents, style: TextStyle(color: textColor2),),
      style: TextButton.styleFrom(backgroundColor: buttonBackgroundColor),
    );
  }
}
