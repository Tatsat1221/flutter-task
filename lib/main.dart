import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/program_card.dart';
import 'package:flutter_task/widgets/program_card1.dart';
import 'package:flutter_task/widgets/program_card2.dart';

import 'custombottom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Find your own way'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.message,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SafeArea(
        child: Stack(children: [
          SingleChildScrollView(
            child: Row(children: [
              Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 9, bottom: 5, right: 190),
                          child: Text(
                            "Hello, Priya!",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(top: 5, bottom: 10, right: 100),
                            child: Text("What do you wanna learn today?",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700))),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 16),
                                height: 48.0,
                                width: 160.0,
                                color: Colors.transparent,
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset("images/Icon5.png"),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        new Center(
                                          child: new Text(
                                            "Programs",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 16),
                                height: 48.0,
                                width: 160.0,
                                color: Colors.transparent,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.blue),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  child: Row(children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      "images/images1.jpeg",
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    new Center(
                                      child: new Text(
                                        "Get Help",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ]),
                                ),
                              )
                            ]),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 16),
                                height: 48.0,
                                width: 160.0,
                                color: Colors.transparent,
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset(
                                          "images/Icon1.png",
                                          color: Colors.blue,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        new Center(
                                          child: new Text(
                                            "Learn",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 16),
                                height: 48.0,
                                width: 160.0,
                                color: Colors.transparent,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.blue),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  child: Row(children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      "images/trello.png",
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    new Center(
                                      child: new Text(
                                        "DD Tracker",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ]),
                                ),
                              )
                            ])
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Programs for you",
                          style: TextStyle(fontSize: 15),
                        ),
                        Padding(padding: EdgeInsets.only(left: 160)),
                        Container(
                          child: Text("View all"),
                        ),
                        Image.asset("images/Icon4.png")
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return ProgramCard();
                          },
                        ),
                      ),
                      //Padding(padding: EdgeInsets.only(bottom: 0.0, left: 10)),

                      SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Events and Experience",
                              style: TextStyle(fontSize: 15),
                            ),
                            Padding(padding: EdgeInsets.only(left: 160)),
                            Container(
                              child: Text("View all"),
                            ),
                            Image.asset("images/Icon4.png")
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return ProgramCard1();
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Events and Experience",
                              style: TextStyle(fontSize: 15),
                            ),
                            Padding(padding: EdgeInsets.only(left: 160)),
                            Container(
                              child: Text("View all"),
                            ),
                            Image.asset("images/Icon4.png")
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return ProgramCard2();
                          },
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                    ],
                  ),
                ],
              ),
            ]),
          ),
          const Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: CustomBottomBar(),
          )
        ]),
      ),
    );
  }
}
