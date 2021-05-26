import 'package:flutter/material.dart';
import 'package:water/credentials/login.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Color(0xFF9ecff6),
      // extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Expanded(
            child: Container(
          child: Stack(
            children: [
              Positioned(
                  child: Container(
                      width: size.width,
                      height: size.height,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Image.asset(
                        "asset/images/f.gif",
                        fit: BoxFit.cover,
                      ))),
              Positioned(
                  top: size.height * .4,
                  width: size.width * .8,
                  left: size.width * .1,
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

                            labelStyle: TextStyle(color: Colors.white),
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
                            labelStyle: TextStyle(color: Colors.white),
                            labelText: "Password",
                            hintStyle: TextStyle(color: Colors.white),
                            border: InputBorder.none,
                          ),
                        ),
                        TextButton(
                          child: new Text(
                            'SIGN UP',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                        InkWell(
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: "Already have account ?",
                              ),
                              TextSpan(
                                text: "SIGN IN ",
                              )
                            ]),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ));
                          },
                        )
                      ],
                    ),
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
