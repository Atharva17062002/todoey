import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  late final String taskTitle;
  late Function(bool?) checkboxCallback;
  late VoidCallback longpressCallback;
  TaskTile({required this.taskTitle,required this.isChecked, required this.checkboxCallback,required this.longpressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallback,
      title:Text(
        taskTitle ,
        style: TextStyle(
            fontSize: 20.0, decoration: isChecked?  TextDecoration.lineThrough: null),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      )
    );
  }
}



// class TaskCheckBox extends StatefulWidget {
//   const TaskCheckBox({Key? key}) : super(key: key);
//
//   @override
//   State<TaskCheckBox> createState() => _TaskCheckBoxState();
// }
//
// class _TaskCheckBoxState extends State<TaskCheckBox> {
//   final bool checkBoxStatus = true;
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
