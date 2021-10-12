import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class stLogin extends StatefulWidget {
  const stLogin({Key? key}) : super(key: key);

  @override
  _stLoginState createState() => _stLoginState();
}

class _stLoginState extends State<stLogin> {
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
                    height: 100,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset("assets/password.svg",height: 100, width: 100,),
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("LOGIN",style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            )
                        ),),
                        SizedBox(
                          width: 30,

                        ),

                        Text("SIGN UP",style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.redAccent,
                          )
                        )),
                      ],
                    ),
                      width: 350,
                      height: 79,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(9),
                          topRight: Radius.circular(9),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                        color : Color.fromRGBO(201, 21, 21, 1),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        fillColor: Colors.redAccent,
                        hintText: "Bountiful@gmail.com",hintStyle: TextStyle(color: Color.fromRGBO(201, 21, 21, 1),),
                        labelText: "Enter Email",
                        border: OutlineInputBorder(
                          borderSide: BorderSide( color: Colors.redAccent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide( color: Colors.redAccent),
                        )
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.redAccent,
                          suffixIcon: Icon(
                            Icons.remove_red_eye,color: Color.fromRGBO(201, 21, 21, 1),
                          ),
                          labelText: "Enter Password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide( color:Color.fromRGBO(201, 21, 21, 1),),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide( color:Color.fromRGBO(201, 21, 21, 1),),
                          )
                      ),

                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Forgot Password ?",style: TextStyle( color: Color.fromRGBO(201, 21, 21, 1),fontWeight: FontWeight.bold),),
              SizedBox(
                width: 80,
              ),
              Text("Forgot Password ?",style: TextStyle( color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    child: Center(child: Text("Login",style: TextStyle( fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),)),
                      width: 330,
                      height: 60,
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
                        color : Color.fromRGBO(201, 21, 21, 1),
                      )
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Create Account",style: TextStyle( color: Color.fromRGBO(201, 21, 21, 1),fontWeight: FontWeight.bold,fontSize: 20),),





                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
