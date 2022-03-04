import 'package:counter_app/providers/task_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class AddTask extends StatelessWidget {
  String _title = '';

  AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: const EdgeInsets.all(16.0),
      title: const Text('Add Task'),
      children: [
        Column(
          children: [
            TextField(
              onChanged: (value) => _title = value,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (_title.isNotEmpty) {
                  Provider.of<TaskProvider>(context, listen: false).addTask(_title);
                  Navigator.pop(context);
                }
              },
              child: const Text("Add"),
            ),
          ],
        )
      ],
    );
  }
}
