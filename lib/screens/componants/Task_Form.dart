import 'package:flutter/material.dart';
import 'package:mu_app/providers/tas;_provider.dart';
import 'package:mu_app/models/task.dart';
import 'package:provider/provider.dart';


class TaskForm extends StatefulWidget {
  const TaskForm({super.key});

  @override
  State<TaskForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TaskForm> {
  @override
  final _formKey = GlobalKey<FormState>();
  final taskTitle = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          const Positioned(
            right: -40.0,
            top: -40.0,
            child: CircleAvatar(
            backgroundColor: Colors.red,
            child : Icon(Icons.close),

          ),
          ),

          Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: taskTitle,
                    decoration: const InputDecoration(hintText: 'Add Task Title....'),
                  
                  ),
                ),
                Padding(padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: const Text('Add Task'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).pop();
                       context.read<TaskProvider>().addTask(
                      Task(
                        title: taskTitle.text, 
                        completed: false),
                    );
                    }
                   
                  }, 
                ),
                )
              ],
            ),
      
      ),

    ],
      ),
    );
  }
}