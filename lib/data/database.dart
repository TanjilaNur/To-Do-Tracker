import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // BoxReference
  final _myBox = Hive.box('mybox');

  //1st time run
  void createInitialData() {
    toDoList = [
      ["Do Exercise", false],
      ["Have Breakfast", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
