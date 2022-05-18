import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:to_do/provider.dart';

class task extends StatefulWidget {
  task({Key? key}) : super(key: key);

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  bool box = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<provider>(builder: (context, provide, child) {
      return Container(
          width: 200,
          height: 60,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: provide.itemslist.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Card(
                      color: Colors.blue,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Theme.of(context).colorScheme.background),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12))),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 20,
                            width: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Expanded(child: Text("${index+1}- ${provide.itemslist[index].name}",style: TextStyle(fontSize: 25),))
                      ])),
                  onTap: () {
                    provide.remove(index);
                  },
                );
              })

      );
    });
  }

  removeBox() {}
}

class Task {
  String name;
  bool state = false;

  Task({required this.name, this.state = false});
}
