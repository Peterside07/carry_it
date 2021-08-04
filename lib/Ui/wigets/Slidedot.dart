import 'package:flutter/material.dart';

class Screenslide extends StatelessWidget {
  bool isActive = true;
  Screenslide(bool, {this.isActive});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedContainer(
        duration: Duration(microseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: isActive ? 12 : 8,
        color: isActive ? Color(0xffF3133) : Color(0xffC4C4C4),
        width: isActive ? 12 : 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }
}
