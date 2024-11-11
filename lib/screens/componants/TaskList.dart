import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mu_app/providers/tas;_provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});


  @override
  Widget build(BuildContext context) {
      final taskProvider = context.watch<TaskProvider>();

    return Expanded(
      child: Container(
        
      margin: const EdgeInsets.only(left: 16.0, right: 16.0 ,top: 8.0),
        
      child: ListView.builder(
        itemCount: taskProvider.tasks.length,

        itemBuilder: (context, index) {
        return Container(
          child: Dismissible(
            key: Key(index.toString()),
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(Icons.delete, color: Colors.white, size: 40.0),
            ),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              taskProvider.removeTask(index);
            },
            child: ListTile(
              
            
            title: Text(taskProvider.tasks[index].title,
            style: const TextStyle(
              color: Color(0xFF000000),
              fontSize: 20.0,
              fontWeight: FontWeight.bold
              
            )),
            
            trailing: Image(
              image: taskProvider.tasks[index].completed ?
              const AssetImage('assets/icons/completed.png'):
              const AssetImage('assets/icons/non-completed.png'),
            ),
            onTap: () => taskProvider.makeTaskCompleted(index),
            ),

          )

          );

        }

      ),
      )

    );  
      
    
  }
  
}