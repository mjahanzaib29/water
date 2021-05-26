import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Color(0xFF9ecff6),
      // extendBodyBehindAppBar: true,
      body: Column(
        children: [
          SingleChildScrollView(
            child: Expanded(
                child: Container(
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                          width: size.width,
                          height: size.height ,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Image.asset(
                            "asset/images/f.gif",
                            fit: BoxFit.cover,
                          ))),
                  Positioned(
                    top: size.height * .4,
                      width: size.width * .8,
                      left: size.width *.1,
                      child: Card(
                        color: Colors.transparent,
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            TextField(
                              // controller: _snameTextEditingController,
                              decoration: InputDecoration(
                                // filled: true,
                                // focusColor: Color(0xFF9ecff6),
                                // fillColor:  Colors.transparent,
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),

                                labelStyle:TextStyle(color: Colors.white),
                                labelText: "User Name",
                                hintStyle: TextStyle(color: Colors.white),
                                border: InputBorder.none,
                              ),
                            ),
                            TextField(
                              // controller: _snameTextEditingController,
                              decoration: InputDecoration(
                                // filled: true,
                                // focusColor: Color(0xFF9ecff6),
                                // fillColor:  Colors.transparent,
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.white,

                                ),
                                labelStyle:TextStyle(color: Colors.white),
                                labelText: "User Name",
                                hintStyle: TextStyle(color: Colors.white),
                                border: InputBorder.none,
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
