import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/Widgets/firsttitle.dart';
import 'package:to_do/Widgets/task.dart';

import 'package:to_do/provider.dart';


import 'newtask_screen.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => Home_State();
}

class Home_State extends State<Home> {
  List<Task> itemslist = [
    Task(name: "fads", state: true),
    Task(name: "sdgsd", state: true)
  ];

  @override
  Widget build(BuildContext context) {
    //  var count = Provider.of<provider>(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(164, 49, 203, 40),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 30, 0),
            child: Icon(
              Icons.search_rounded,
              size: 30,
              color: Color.fromRGBO(151, 180, 200, 10),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 30, 0),
              child: Icon(IconData(0xef52, fontFamily: 'MaterialIcons'),
                  size: 30.0, color: Color.fromRGBO(151, 180, 200, 10)))
        ],
        leading: const Padding(
          padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
          child: Icon(Icons.menu_rounded,
              size: 30, color: Color.fromRGBO(151, 180, 200, 10)),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
            child: Row(children: const [
              Text(
                "What's up, Mina!",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ]),
          ),
          const SizedBox(height: 45),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
            child: Row(children: const [
              Text(
                "CATEGORIES",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color.fromRGBO(151, 180, 200, 10),
                    letterSpacing: 1),
              ),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(children: [
            SizedBox(width: 360, height: 120, child: FirstTitle())
          ]),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 0, 10),
            child: Row(children: const [
              Text(
                "TODAY'S TASKS",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color.fromRGBO(151, 180, 200, 10),
                    letterSpacing: 1),
              ),
            ]),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [SizedBox(width: 320, height: 290, child: task())]),
          const Text("tap on the task to remove it")
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 15, 15),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => newtask_screen(),
              ),
            );
          },
          tooltip: 'Increment',
          child: const Icon(
            Icons.add,
            size: 35,
          ),
        ),
      ),
    );
  }
}
