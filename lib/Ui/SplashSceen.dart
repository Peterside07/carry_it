import 'package:carry_it/Ui/OnboardContent.dart';
import 'package:carry_it/Ui/Register.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:introduction_screen/introduction_screen.dart';
//import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  _onPageChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: content.length,
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          Image.asset(
                            content[i].image,
                            height: 350,
                          ),
                          Text(content[i].title,
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                fontSize: 23,
                                color: Color(0xfff2F3133),
                              )),
                          SizedBox(
                            height: 24,
                          ),
                          Text(content[i].description,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xfff2F3133),
                              )),
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    content.length,
                                    (index) => buildSide(index),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                //margin: EdgeInsets.all(5.0),
                                height: 60,
                                width: double.infinity,
                                child: RaisedButton(
                                  child: Text(
                                    "Get Started",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                  color: Color(0xfff0CBA70),
                                  textColor: Colors.white,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              RegisterScreen(),
                                        ));
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    ));
  }

  AnimatedContainer buildSide(int index) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? Color(0xff2F3133) : Colors.grey,
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
