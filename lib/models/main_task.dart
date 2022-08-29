import 'package:flutter/foundation.dart';

class MainTask with ChangeNotifier {
  final String id;
  final String title;
  bool isDone;

  MainTask({
    required this.id,
    required this.title,
    this.isDone = false,
  });

  void toggleDoneStatus() {
    isDone = !isDone;
  }
}