import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Sign_up extends StatefulWidget {
  @override
  _Sign_upState createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  File imagefile;
  final _picker = ImagePicker();

  takePhoto(ImageSource _imageSource) async {
    final pickedFile = await _picker.getImage(source: _imageSource);

    setState(() {
      imagefile = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 28, top: 50),
              child: Container(
                child: Text(
                  "Complete Your \nProfile!",
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            //Registration Details
            Padding(
                padding: EdgeInsets.only(left: 28, right: 28),
                child: Column(children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Color(0xff2F3133),
                        // backgroundImage: imagefile != null ? Image.asset("female.png"): Icon(Icons.ac_unit);
                      ),
                      Positioned(
                          bottom: 5,
                          right: 2,
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) => bottomSheet());
                            },
                            child: Container(
                                color: Color(0xff0CBA70),
                                //height: 30,
                                //width: 30,
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.white,
                                ) //Icon(Icons.camera_alt_outlined,)
                                ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),

                  // Sign Up Full Name
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "Full name",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Sign up email field
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email",
                      // suffixIcon: Icon(Icons.remove_red_eye_sharp),
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisSize: ,
                    children: [
                      Expanded(
                        child: Container(
                          width: 73,
                          height: 60,
                          child: TextField(
                            maxLength: 3,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "+234",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Phone Number",
                              // suffixIcon: Icon(Icons.remove_red_eye_sharp),
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  //Gender
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Gender'),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        height: 53,
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      //color: Color(0xffBDBDBD),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Image.asset(
                                    "assets/male.png",
                                    height: 9.6,
                                    width: 9.16,
                                  )),
                            ),
                            Text("Male")
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        height: 53,
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      // color: Color(0xffBDBDBD),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Image.asset(
                                    "assets/female.png",
                                    height: 9.6,
                                    width: 9.16,
                                  )),
                            ),
                            Text("Female")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  // Cancel and Save Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0xff0CBA70),
                                width: 1,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(),
                            height: 53,
                            width: 100,
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                color: Color(0xff0CBA70),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 1,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Color(0xff0CBA70),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(),
                            height: 53,
                            width: 100,
                            child: Text(
                              "Save",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ]))
          ],
        ),
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Text(
            "Choose Profile Picture",
            style: GoogleFonts.openSans(
                color: Color(0xff2F3133),
                fontWeight: FontWeight.w700,
                fontSize: 20,
                fontStyle: FontStyle.normal),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton.icon(
                  onPressed: () {
                    takePhoto(ImageSource.camera);
                  },
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: Color(0xff0CBA70),
                  ),
                  label: Text("Camera")),
              FlatButton.icon(
                  onPressed: () {
                    takePhoto(ImageSource.gallery);
                  },
                  icon: Icon(Icons.image, color: Color(0xff0CBA70)),
                  label: Text("Gallery")),
            ],
          )
        ],
      ),
    );
  }

  // void takePhoto(ImageSource imageSource) async {
  //   final pickedFile = await _picker.pickImage(source: imageSource);
  //   setState(() {
  //     _pickedFile = File(pickedFile.path);

  //     //File(pickedFile.path); //pickedFile as PickedFile;
  //   });
  // }
}

Widget bottomSheet() {
  return Container(
    height: 100,
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Column(
      children: [
        Text(
          "Choose Profile Picture",
          style: GoogleFonts.openSans(
              color: Color(0xff2F3133),
              fontWeight: FontWeight.w700,
              fontSize: 20,
              fontStyle: FontStyle.normal),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Color(0xff0CBA70),
                ),
                label: Text("Camera")),
            FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.image, color: Color(0xff0CBA70)),
                label: Text("Gallery")),
          ],
        )
      ],
    ),
  );
}
