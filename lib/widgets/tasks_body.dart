import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/task_card.dart';
import 'package:tasks_app/widgets/task_list_view.dart';

import '../constant.dart';

class TasksBody extends StatefulWidget {
  const TasksBody({super.key});

  @override
  State<TasksBody> createState() => _TasksBodyState();
}

class _TasksBodyState extends State<TasksBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                'Todays Tasks',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
            ),
            SizedBox(height: 16),
            Expanded(child: TaskListView()),
          ],
        ),
      ),
    );
  }
}
