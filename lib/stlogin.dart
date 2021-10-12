import 'package:crypto_masterclass/login.dart';
import 'package:crypto_masterclass/page3.dart';
import 'package:crypto_masterclass/page4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Stllogin extends StatefulWidget {
  const Stllogin({Key?key}) : super(key: key);

  @override
  _StlloginState createState() => _StlloginState();
}

class _StlloginState extends State<Stllogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),

                  SvgPicture.asset("assets/login.svg",height: 250,width: 250, ),
                  SizedBox(
                    height: 100,
                  ),
                  Text('Welcome to Crypto', textAlign: TextAlign.left, style:GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  )),
                  SizedBox(
                    height: 10,
                  ),

                  Text('Master Class', textAlign: TextAlign.left, style:GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  )),

                  SizedBox(
                    height: 30,
                  ),

                  InkWell(
                    onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> stLogin()));
                    },
                    child: Container(
                      width: 290,
                      height: 47,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        boxShadow : [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0,4),
                            blurRadius: 4
                        )],
                        color : Colors.black,
                      ),
                      child: Center(
                        child: Text('Login as Student', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(255, 247, 247, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=> Page4()));
                    },
                    child: Container(
                      width: 290,
                      height: 47,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        boxShadow : [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0,4),
                            blurRadius: 4
                        )],
                        color : Colors.blueAccent,
                      ),
                      child: Center(
                        child: Text('Login as Instructor', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(255, 247, 247, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1,

                        ),),
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
