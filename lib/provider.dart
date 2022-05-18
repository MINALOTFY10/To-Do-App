import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:to_do/provider.dart';

import 'Widgets/firsttitle.dart';
import 'Widgets/task.dart';

class provider extends ChangeNotifier {
  List<task> _tasks = [];
  int numberOfBusiness = 1;
  int numberOfPersonal = 1;
  int numberOfOthers = 1;

  List<Task> itemslist = [
    Task(name: "First task", state: false),
    Task(name: "Socend task", state: false),
    Task(name: "Third Task", state: false)
  ];

  List<firstTitle> myTitleList = [
    firstTitle(titleName: "Business"),
    firstTitle(titleName: "Personal"),
    firstTitle(titleName: "Other"),
  ];

  void add(String newName) {
    itemslist.add(Task(name: newName, state: false));
    notifyListeners();
    //_tasks.add();
  }
  void remove(int i) {
    itemslist.remove(itemslist[i]);
    notifyListeners();
    //_tasks.add();
  }

  late String titleName;

  int getListNumbers(int i) {
    if (i == 0) {
      return numberOfBusiness;
    } else if (i == 1) {
      return numberOfPersonal;
    } else {
      return numberOfOthers;
    }
  }


  void AddNewBusiness() {
    numberOfBusiness++;
  }

  void AddNewPersonal() {
    numberOfPersonal++;
  }

  void AddNewOthers() {
    numberOfOthers++;
  }

  void RemoveBusiness() {
    numberOfBusiness--;
  }

  void RemovePersonal() {
    numberOfBusiness--;
  }

  void RemoveOthers() {
    numberOfBusiness--;
  }
}
