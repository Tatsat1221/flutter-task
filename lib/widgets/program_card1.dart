import 'package:flutter/material.dart';
import 'package:flutter_task/constant.dart';
import 'package:flutter_task/models/event_models.dart';

class ProgramCard1 extends StatelessWidget {
  final EventModel eventModel;
  const ProgramCard1({super.key, required this.eventModel});

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.parse(eventModel.createdAt);
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
          Text(eventModel.category,
              style: TextStyle(
                color: Colors.blue,
              )),
          SizedBox(
            height: 10,
          ),
          Text(eventModel.name,
              style: TextStyle(
                color: Colors.black,
              )),
          SizedBox(
            height: 10,
          ),
          Text(
              '${dateTime.day} ${months[dateTime.month - 1]} ${weekName[dateTime.weekday - 1]}',
              style: TextStyle(
                color: Colors.grey,
              )),
        ],
      ),
    );
  }
}
