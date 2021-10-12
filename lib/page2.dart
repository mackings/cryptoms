import 'package:crypto_masterclass/page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatefulWidget {
  const Page2({Key ? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),

                  SvgPicture.asset("assets/onlinemedia.svg",height: 190, width: 190,),
                  SizedBox(
                    height: 50,
                  ),
                  Text('Learn Online From', textAlign: TextAlign.left, style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )
                  )),
                  SizedBox(
                    height: 10,
                  ),

                  Text('Your Home', textAlign: TextAlign.left, style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )
                  )),
                  SizedBox(
                    height: 40,
                  ),

                  Center(
                    child: Text('Lorem ipsum dolor sit amet \nadipisicing elit. Maxime mollitia\nadipisicing elit. Maxime mollitia ', textAlign: TextAlign.left, style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),),
                  ),

                  SizedBox(
                    height: 60,
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Page3()));
                    },
                    child: Container(
                        width: 240,
                        height: 67,
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          boxShadow : [BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0,4),
                              blurRadius: 4
                          )],
                          color : Color.fromRGBO(201, 21, 21, 1),
                        ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text('Next', textAlign: TextAlign.left, style: TextStyle(
                              color: Color.fromRGBO(255, 247, 247, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 20,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1,
                          ),),

                          SizedBox(
                            width: 90,
                          ),

                          Container(
                              width: 60,
                              height: 38,
                              decoration: BoxDecoration(
                                borderRadius : BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color : Color.fromRGBO(255, 247, 247, 1),
                              ),
                            child: Icon(Icons.chevron_right,color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
