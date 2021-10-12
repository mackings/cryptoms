import 'package:crypto_masterclass/page4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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

                 SvgPicture.asset("assets/homeboy.svg",height: 310,width: 310,),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Learn Online From', textAlign: TextAlign.left, style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        )

                    ),
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),

                  Text('Your Home', textAlign: TextAlign.left, style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),

                  ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Page4()));
                    },
                    child: Container(
                      width: 260,
                      height: 57,
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
                        color : Colors.black,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text('Get Started', textAlign: TextAlign.left, style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            )
                          )),

                          SizedBox(
                            width: 40,
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
                            child: Icon(Icons.chevron_right,color: Colors.black),
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
