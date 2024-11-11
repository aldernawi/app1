import 'package:flutter/material.dart';
import 'package:mu_app/screens/componants/TaskList.dart';
import 'package:mu_app/screens/componants/addTaskButton.dart';



import 'welcome.dart';

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        welcome(name: 'Mustafa',avatar: 'assets/icons/completed.png'), 
        AddTaskbutton(),
        TaskList(),
      ],
    );
  }
}