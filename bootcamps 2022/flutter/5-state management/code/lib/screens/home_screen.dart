import 'package:counter_app/providers/task_provider.dart';
import 'package:counter_app/screens/add_task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tasks Page')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => AddTask(),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Consumer<TaskProvider>(
        builder: (context, taskProvider, child) {
          final tasks = taskProvider.tasks;
          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (contet, index) {
              return ListTile(
                leading: Checkbox(
                  value: tasks[index].isDone,
                  onChanged: (_) {
                    taskProvider.updateTask(tasks[index]);
                  },
                ),
                title: Text(tasks[index].title!),
              );
            },
          );
        },
      ),
    );
  }
}
