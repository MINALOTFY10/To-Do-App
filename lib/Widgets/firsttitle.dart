import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:to_do/provider.dart';

class FirstTitle extends StatelessWidget {
  FirstTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<provider>(builder: (context, provide, child) {
      return Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: provide.myTitleList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                  width: 200,
                  child: Card(
                    color: Colors.blue,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Theme.of(context).colorScheme.background),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${provide.getListNumbers(index)}" " Tasks",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            provide.myTitleList[index].titleName,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                  )),
            );
          },
        ),
      );
    });
  }
}

class firstTitle {

  late String titleName;
  firstTitle({required this.titleName});


}
