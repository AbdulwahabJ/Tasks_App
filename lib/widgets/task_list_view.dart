import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/task_card.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.builder(itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 3.0),
          child: TaskCard(),
        );
      }),
    );
  }
}
