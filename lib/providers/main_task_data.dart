import 'package:flutter/material.dart';
import '../models/main_task.dart';

class MainTaskData with ChangeNotifier{
  final List<MainTask> _mainTask = [
    MainTask(
      id: DateTime.now().toString(),
      title: 'شخصی',
    ),
    MainTask(
      id: DateTime.now().toString(),
      title: 'کار',
    ),
    MainTask(
      id: DateTime.now().toString(),
      title: 'درس',
    )
  ];

  List<MainTask> get mainTask{
    return _mainTask;
  }

  int get mainTaskCount{
    return _mainTask.length;
  }

  void addMainTask(String titleName){
    mainTask.add(MainTask(id: DateTime.now().toString(), title: titleName));
    notifyListeners();
  }

}