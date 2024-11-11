import 'package:flutter/material.dart';
import 'package:mu_app/screens/componants/Task_Form.dart';

class AddTaskbutton extends StatelessWidget {
  const AddTaskbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blueGrey,
      child: const Icon(Icons.add),
      onPressed: () => showDialog(
        builder: (BuildContext context) {
          return const TaskForm();
        },
        context: context,
      )
    );
  }
}