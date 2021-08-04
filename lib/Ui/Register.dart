import 'package:carry_it/Ui/Login.dart';
import 'package:carry_it/Ui/Sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _termagreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 28, top: 80),
              child: Text(
                "Here To Get \nStarted!",
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    fontStyle: FontStyle.normal),
              ),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      //suffixIcon: iconData,
                      hintText: "Email",
                      //suffixIcon: Icon(iconData),
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  field("Password", Icons.remove_red_eye_sharp),
                  SizedBox(
                    height: 12,
                  ),
                  field("Confirm Password", Icons.remove_red_eye),
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Checkbox(
                            activeColor: Color(0xfff0CBA70),
                            value: _termagreed,
                            onChanged: (newValue) {
                              setState(() {
                                _termagreed = newValue;
                              });
                            }),
                        Text(
                          "I agree to the",
                          style: TextStyle(
                            color: Color(0xffD1D2D2),
                            fontSize: 11,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(" Privacy Policy",
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xff098B54),
                            )),
                        Text(
                          " and",
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xffD1D2D2),
                          ),
                        ),
                        Text(" Terms of Service",
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xff098B54),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: Container(
                //alignment: Alignment.center,
                height: 60,
                width: double.infinity,
                child: RaisedButton(
                  child: Text(
                    "Create Account",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  color: Color(0xfff0CBA70),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sign_up(),
                        ));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already got an account? ",
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xffD1D2D2),
                    )),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                  child: Text("Sign in",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff098B54),
                      )),
                ),
                Text(" here",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffD1D2D2),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget field(String hintText, IconData iconData) {
  return Container(
    height: 60,
    width: 315,
    child: TextField(
      decoration: InputDecoration(
        //suffixIcon: iconData,
        hintText: hintText,
        suffixIcon: Icon(iconData),
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),
  );
}
