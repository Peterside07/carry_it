import 'package:carry_it/Ui/Register.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: Icon(Icons.person),
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
                alignment: Alignment.centerRight,
                child: Text("forget Password")),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: Container(
                //alignment: Alignment.center,
                height: 60,
                width: double.infinity,
                child: RaisedButton(
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  color: Color(0xfff0CBA70),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
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
                          builder: (context) => RegisterScreen(),
                        ));
                  },
                  child: Text("Sign up",
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
      )
    ])));
  }
}

Widget field(String hintText, IconData iconData) {
  return Container(
    height: 60,
    width: 315,
    child: TextField(
      decoration: InputDecoration(
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
