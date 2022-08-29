import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/main_task_data.dart';
import '../models/main_task.dart';

class MainTaskItem extends StatelessWidget {
  const MainTaskItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainTask = Provider.of<MainTask>(context,listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        color: Colors.grey[200],
        child: GridTile(
          child: GestureDetector(
            onTap: (){},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(mainTask.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20.0
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
