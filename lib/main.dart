import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_task/models/event_models.dart';
import 'package:flutter_task/models/program_model.dart';
import 'package:flutter_task/services/api_services.dart';
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
  List<ProgramModel> programmodel = [];
  List<EventModel> eventmodel = [];
  _fetchApiData() async {
    programmodel = await ApiServices.fetchProgramFromApi();
    eventmodel = await ApiServices.fetchEventFromApi();
    if (mounted) {
      setState(() {
        log(programmodel.length.toString());
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchApiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: const [
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
                        const Padding(
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
                        const Padding(
                            padding:
                                EdgeInsets.only(top: 5, bottom: 10, right: 100),
                            child: Text("What do you wanna learn today?",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700))),
                        const SizedBox(
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
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10.0))),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset("images/Icon5.png"),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Center(
                                          child: Text(
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
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10.0))),
                                  child: Row(children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      "images/images1.jpeg",
                                      height: 20,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Center(
                                      child: Text(
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
                        const SizedBox(
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
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10.0))),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset(
                                          "images/Icon1.png",
                                          color: Colors.blue,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Center(
                                          child: Text(
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
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10.0))),
                                  child: Row(children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      "images/trello.png",
                                      height: 20,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Center(
                                      child: Text(
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
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Programs for you",
                          style: TextStyle(fontSize: 15),
                        ),
                        Padding(padding: EdgeInsets.only(left: 160)),
                        Container(
                          child: Text("View all"),
                        ),
                        Image.asset("images/Icon4.png")
                      ]),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          itemCount:
                              programmodel != null ? programmodel.length : 0,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return ProgramCard(
                              programModel: programmodel[index],
                            );
                          },
                        ),
                      ),
                      //Padding(padding: EdgeInsets.only(bottom: 0.0, left: 10)),

                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "Events and Experience",
                              style: TextStyle(fontSize: 15),
                            ),
                            const Padding(padding: EdgeInsets.only(left: 160)),
                            Container(
                              child: const Text("View all"),
                            ),
                            Image.asset("images/Icon4.png")
                          ]),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          itemCount: eventmodel != null ? eventmodel.length : 0,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return ProgramCard1(
                              eventModel: eventmodel[index],
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "Events and Experience",
                              style: TextStyle(fontSize: 15),
                            ),
                            const Padding(padding: EdgeInsets.only(left: 160)),
                            Container(
                              child: const Text("View all"),
                            ),
                            Image.asset("images/Icon4.png")
                          ]),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          itemCount: eventmodel != null ? eventmodel.length : 0,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return ProgramCard2(
                              eventModel: eventmodel[index],
                            );
                          },
                        ),
                      ),
                      const SizedBox(
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
