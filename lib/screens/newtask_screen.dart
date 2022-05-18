import 'package:flutter/material.dart';
import 'package:to_do/provider.dart';
import 'package:provider/provider.dart';


class newtask_screen extends StatefulWidget {
  newtask_screen({Key? key}) : super(key: key);

  @override
  State<newtask_screen> createState() => _newtask_screenState();
}

class _newtask_screenState extends State<newtask_screen> {
  final TextEditingController _namefromfield = TextEditingController();

  bool checkstateBusiness = false;
  bool checkstatePersonal = false;
  bool checkstateOther = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _namefromfield,
              decoration: const InputDecoration(
                  labelText: "Add New Task", hintText: "Enter Task's name"),
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: checkstateBusiness,
                      onChanged: (checkstateBusiness) {
                        setState(() {
                          this.checkstateBusiness = checkstateBusiness!;
                          print(checkstateBusiness);
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    Text("Business")
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: checkstatePersonal,
                      onChanged: (checkstatePersonal) {
                        setState(() {
                          this.checkstatePersonal = checkstatePersonal!;
                          print(checkstateBusiness);
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    Text("Personal")
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: checkstateOther,
                      onChanged: (checkstateOther) {
                        setState(() {
                          this.checkstateOther = checkstateOther!;
                          print(checkstateBusiness);
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    Text("Other")
                  ],
                ),
              ],
            ),
            Consumer<provider>(builder: (context, provide, child) {
              return ElevatedButton(
                onPressed: () {
                  provide.add(_namefromfield.text);
                  if (checkstateBusiness) {
                    provide.AddNewBusiness();
                  } else if (checkstatePersonal) {
                    provide.AddNewPersonal();
                  } else if (checkstateOther) {
                    provide.AddNewOthers();
                  }
                  setState(() {});
                },
                child: const Text('Add the task'),
              );
            })
          ],
        ),
      ),
    );
  }
}
