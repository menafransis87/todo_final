import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatefulWidget {
  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
var selectedDate = DateTime.now();
GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(

          children: [

            Text('Add New Task',textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium,),
            Form(
                key: formkey,
                child: Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Title'
                  ),
validator: (text){
  if (text==null || text.isEmpty){
      return 'Please Enter Title';
  }
  return null;
},
                ),
                TextFormField(
                  maxLines: 4,

                  decoration: InputDecoration(
                      labelText: 'Description'
                  ),
                  validator: (text){
                    if (text==null || text.isEmpty){
                      return 'Please Enter Description';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 15,),
                Text('Select Time',textAlign: TextAlign.center),
                SizedBox(height: 15,),
                InkWell(
                    onTap: (){
                      openDatePicker();
                    },
                    child: Text('${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}'

                        ,textAlign: TextAlign.center)

                ),
                SizedBox(height: 15,),
                ElevatedButton(
                    style: ButtonStyle(

                    ),
                    onPressed: (){
                      if (formkey.currentState!.validate()){

                        //insert
                      }

                    }, child: Text('ADD TASK'))
              ],
            ))
          ],
        ),
      ),
    );
  }

void openDatePicker() async{
  var choosenDate = await showDatePicker(context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 356)));

  if(choosenDate!=null){
    selectedDate = choosenDate;
    setState((){
  });
}
}
}