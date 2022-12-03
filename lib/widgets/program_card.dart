import 'package:flutter/material.dart';

class ProgramCard extends StatelessWidget {
  const ProgramCard({super.key});

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
          Image.asset("images/Frame122.png"),
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
          Text("A complete guide for your new born baby",
              style: TextStyle(
                color: Colors.black,
              )),
          SizedBox(
            height: 10,
          ),
          Text("16 Lessons",
              style: TextStyle(
                color: Colors.grey,
              )),
        ],
      ),
    );
  }
}
