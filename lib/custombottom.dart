import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 30.0,
            spreadRadius: 10.0,
            offset: Offset(0.0, 18.0),
            color: Color.fromRGBO(0, 0, 0, 0.25),
          )
        ],
      ),
      child: SizedBox(
        height: 50.0,
        //width: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              child: Image.asset('images/Icon.png', height: 100.0),
            ),
            SizedBox(
              width: 45,
            ),
            GestureDetector(
              child: Image.asset('images/Icon1.png', height: 100.0),
            ),
            SizedBox(
              width: 38,
            ),
            GestureDetector(
              child: Image.asset('images/Icon2.png', height: 100.0),
            ),
            SizedBox(
              width: 45,
            ),
            GestureDetector(
              child: Image.asset('images/Icon3.png', height: 100.0),
            ),
            SizedBox(
              width: 40,
            ),
            GestureDetector(
              child: Image.asset(
                'images/Ellipse14.png',
                height: 50.0,
                width: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
