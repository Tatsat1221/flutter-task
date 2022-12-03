import 'package:flutter/material.dart';

class ProgramCard1 extends StatelessWidget {
  const ProgramCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 50),
      padding: EdgeInsets.only(left: 10),
      height: 250,
      width: 222,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("images/yoga.png"),
          SizedBox(
            height: 10,
          ),
          Text("LIFESTYLE",
              style: TextStyle(
                color: Colors.blue,
              )),
          SizedBox(
            height: 10,
          ),
          Text("Understanding of human behaviour",
              style: TextStyle(
                color: Colors.black,
              )),
          SizedBox(
            height: 10,
          ),
          Text("13 February sunday",
              style: TextStyle(
                color: Colors.grey,
              )),
        ],
      ),
    );
  }
}
