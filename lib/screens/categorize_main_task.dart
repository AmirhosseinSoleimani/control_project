import 'package:flutter/material.dart';
import '../widgets/main_task_grid.dart';
import '../providers/main_task_data.dart';
import 'package:provider/provider.dart';

class CategorizeMainTask extends StatefulWidget {
  const CategorizeMainTask({Key? key}) : super(key: key);

  @override
  State<CategorizeMainTask> createState() => _CategorizeMainTaskState();
}

class _CategorizeMainTaskState extends State<CategorizeMainTask> {
  String? textFieldValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text(
              'ساختن یک گروه جدید',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            content: TextField(
              onChanged: (value){
                setState((){
                  textFieldValue = value;
                });
              },
              autofocus: true,
              decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                  hintText: 'یک گروه جدید ایجاد کنید'
              ),
            ),
            actions: [
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: (){
                        Provider.of<MainTaskData>(context,listen: false).addMainTask(textFieldValue!);
                        Navigator.of(context).pop();
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white10
                      ),
                      child: const Text('ذخیره',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white10
                      ),
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: const Icon(Icons.close,
                        size: 30.0,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              )
            ],

          ),
        ),
        backgroundColor: Colors.grey[300],
        child: const Icon(Icons.add,
          size: 30.0,
          color: Colors.blueAccent,
        ),
      ),
      backgroundColor: Colors.white54,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                onChanged: (value){},
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[100],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none
                    ),
                    hintText: 'جست و جوی فعالیت ها',
                    hintStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20.0
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30.0,
                      color: Colors.grey[500],
                    )
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[100]
                      ),
                      child: Column(
                        children: const [
                          Icon(Icons.list_alt,
                            size: 30.0,
                            color: Colors.black54,
                          ),
                          Text('همه فعالیت ها',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black54
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(

                          backgroundColor: Colors.grey[100]
                      ),
                      onPressed: (){},
                      child: Column(
                        children: const [
                          Icon(Icons.calendar_month,
                            size: 30.0,
                            color: Colors.black54,
                          ),
                          Text('در این ماه',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black54
                            ),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'لیست های من',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              const Expanded(
                child: MainTaskGrid(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
