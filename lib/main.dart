import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tasks_app/views/add_task_screen.dart';
import 'package:tasks_app/views/home_screen.dart';

import 'constant.dart';

void main() async {
  //
  await Hive.initFlutter();
  await Hive.openBox(kTaskBox);
  //
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        AddTaskScreen.id: (context) => const AddTaskScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}