import 'package:flutter/material.dart';
import 'package:flutter_task/models/program_model.dart';

class ProgramCard extends StatelessWidget {
  final ProgramModel programModel;
  const ProgramCard({super.key, required this.programModel});

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
          Text(programModel.category,
              style: TextStyle(
                color: Colors.blue,
              )),
          SizedBox(
            height: 10,
          ),
          Text(programModel.name,
              style: TextStyle(
                color: Colors.black,
              )),
          SizedBox(
            height: 10,
          ),
          Text("${programModel.lesson} Lessons",
              style: TextStyle(
                color: Colors.grey,
              )),
        ],
      ),
    );
  }
}
