import 'package:flutter/material.dart';
import '../providers/main_task_data.dart';
import 'package:provider/provider.dart';
import './main_task_item.dart';


class MainTaskGrid extends StatelessWidget {
  const MainTaskGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainTaskData = Provider.of<MainTaskData>(context);
    return GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: mainTaskData.mainTaskCount,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3/2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
        ),
        itemBuilder: (context,index) => ChangeNotifierProvider.value(
          value: mainTaskData.mainTask[index],
          child: MainTaskItem(),
        )
    );
  }
}
