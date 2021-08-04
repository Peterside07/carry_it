import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSelected = true;
  bool unSelected = false;

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            // label: "Account",
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet_travel,
              color: Colors.grey,
            ),
            //label: "Account",
            title: Text("Wallet"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.receipt_outlined,
              color: Colors.grey,
            ),
            title: Text(
              "History",
              style: TextStyle(color: Colors.black),
            ),
            //backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.grey,
            ),
            title: Text("Account"),
          ),
        ],
      ),
      //drawer: ,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Welcome Jay",
          // textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Color(0xff7C7C7C)),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.format_list_bulleted,
                color: Color(0xff2F3133),
              ),
              onPressed: () {})
        ],
      ),
      body: SafeArea(
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30, bottom: 50, top: 16),
                child: Text(
                  "What are we \nmoving today?",
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      fontStyle: FontStyle.normal),
                ),
              ),
              SizedBox(
                  //height: 24,
                  ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      // isSelected = false;
                      if (isSelected == false) {
                        unSelected == true;
                      }
                    });
                  },
                  child: Container(
                      height: 60,
                      margin: EdgeInsets.only(bottom: 13),
                      decoration: BoxDecoration(
                          color: isSelected && unSelected
                              ? Colors.white
                              : Colors.green,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(8.0, 8.0),
                                blurRadius: 10,
                                //spreadRadius: 50,
                                color: Colors.white)
                          ]),
                      child: Row(
                        children: [
                          Container(
                              height: 28,
                              width: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(
                                  "assets/document.png",
                                ),
                              ))),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "Packages",
                            style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                fontStyle: FontStyle.normal),
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isSelected = false;
                    });
                  },
                  child: Container(
                      height: 60,
                      margin: EdgeInsets.only(bottom: 13),
                      decoration: BoxDecoration(
                          color: isSelected ? Colors.white : Colors.green,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(8.0, 8.0),
                                blurRadius: 10,
                                //spreadRadius: 50,
                                color: Colors.white)
                          ]),
                      child: Row(
                        children: [
                          Container(
                              height: 28,
                              width: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(
                                  "assets/food.png",
                                ),
                              ))),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "Food",
                            style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                fontStyle: FontStyle.normal),
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isSelected = false;
                    });
                  },
                  child: Container(
                      height: 60,
                      margin: EdgeInsets.only(bottom: 13),
                      decoration: BoxDecoration(
                          color: isSelected ? Colors.white : Colors.green,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(8.0, 8.0),
                                blurRadius: 10,
                                //spreadRadius: 50,
                                color: Colors.white)
                          ]),
                      child: Row(
                        children: [
                          Container(
                              height: 28,
                              width: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(
                                  "assets/doc.png",
                                ),
                              ))),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "Document",
                            style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                fontStyle: FontStyle.normal),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
