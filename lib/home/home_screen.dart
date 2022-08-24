import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/tasks/task_list.dart';

import '../setting/setting_tab.dart';
import '../tasks/add_task_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'
        ),

      ),
      bottomNavigationBar: BottomAppBar(

        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(

          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index){
          selectedIndex = index;
          setState(() {

          });
            },
          items: [

            BottomNavigationBarItem(icon:Icon(Icons.list),label: ''),
            BottomNavigationBarItem(icon:Icon(Icons.settings),label: '')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.white,
            width: 4
          )
        ),
        onPressed: (){
showModalBottomSheet(context: context, builder: (context){
return AddTaskBottomSheet();
});

        },
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: tabs[selectedIndex]
    );
  }

  List <Widget> tabs =[
    TaskList(),
    SettingTab(),

  ];
}



