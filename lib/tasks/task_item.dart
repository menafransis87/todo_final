
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class TaskItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.all(10),
      child: Slidable(
        startActionPane: ActionPane(
          motion: DrawerMotion(),
          children: [
            SlidableAction(onPressed: (_){

      },
          icon:Icons.delete,
          backgroundColor: Colors.red,
      label: 'Delete',
            borderRadius: BorderRadius.only(topLeft:Radius.circular(10),bottomLeft:Radius.circular(10)  ),
            ),

          ],
        ),
        child: Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 2,
                blurRadius: 0,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],


          ),
          padding: EdgeInsets.all(10),


          child: Row(
            children: [
              Container(
                height: double.infinity,
                width: 5,
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                decoration: BoxDecoration(
                    color:Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),


              Expanded(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      SizedBox(height: 10,),
                      Text('Title',style: Theme.of(context).textTheme.titleMedium,),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          Text('1/1/2022',style: Theme.of(context).textTheme.bodySmall,)
                        ],
                      )

                    ],
                  )),

              Container(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 24),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(50)

                ),
                child: Icon(Icons.check),
              )
            ],
          ),

        ),
      ),
    );
  }
}
