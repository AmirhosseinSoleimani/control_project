import 'package:flutter/material.dart';
import './categorize_main_task.dart';

class NavigationBottomBar extends StatefulWidget {
  const NavigationBottomBar({Key? key}) : super(key: key);

  @override
  State<NavigationBottomBar> createState() => _NavigationBottomBarState();
}

class _NavigationBottomBarState extends State<NavigationBottomBar> {
  int _selectedIndex = 0;

  static final List _widgetOption = [
    CategorizeMainTask(),
    const Text ('تابلو فعالیت ها'),
    const Text ('فعالیت های امروز'),
    const Text('تنظیمات')
  ];

  void _openItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _widgetOption[_selectedIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 16.0,
        unselectedFontSize: 10.0,
        currentIndex: _selectedIndex,
        onTap: _openItemTapped,
        elevation: 12.0,
        showSelectedLabels: true,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.task_alt_sharp,
              size: 40.0,
            ),
            activeIcon: Icon(Icons.task_alt_sharp,
              size: 40.0,
              color: Colors.blueAccent,
            ),
            label: 'فعالیت ها',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sunny,
              size: 40.0,
            ),
            activeIcon: Icon(Icons.sunny,
              size: 40.0,
              color: Colors.yellowAccent,
            ),
            label: 'امروز',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.show_chart,
                size: 40.0,
              ),
              activeIcon: Icon(Icons.show_chart,
                size: 40.0,
                color: Colors.purple,
              ),
              label: 'تابلو فعالیت ها'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,
                size: 40.0,
              ),
              activeIcon: Icon(
                Icons.person,
                size: 40.0,
                color: Colors.teal,
              ),
              label: 'تنظیمات'
          ),
        ],

      ),
    );
  }
}
