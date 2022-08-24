import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/tasks/task_item.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class TaskList extends StatelessWidget {
  var Tasks =[
    TaskItem(),

  ];
  @override
  Widget build(BuildContext context) {
return Container(
  child: Column(
    children: [
      CalendarTimeline(
        showYears: true,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(Duration(days: 365)),
        lastDate: DateTime.now().add(Duration(days: 365)),
        onDateSelected: (date) => {
          print(date)
        },
        leftMargin: 20,
        monthColor: Colors.black,
        dayColor: Colors.black,
        activeDayColor: Theme.of(context).primaryColor,
        activeBackgroundDayColor: Colors.white,
        dotsColor: Theme.of(context).primaryColor,
        selectableDayPredicate: (date) => true,
        locale: 'en',
      ),
      Expanded(
        child: ListView.builder(itemBuilder: (_,index)
        {
        return TaskItem()  ;
        },itemCount: 10,

        ),
      )
    ],
  ),
);
}
}