import 'package:flutter/material.dart';

import '../constant.dart';
import '../widgets/add_task.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  static const String id = '/AddTaskScreen';
  @override
  Widget build(BuildContext context) {
    //
    // var currentDate = DateTime.now();
    // var formattedCuttentDate = DateFormat.yMMM().format(currentDate);
    //
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: const SafeArea(
        child: Scaffold(
          backgroundColor: kBackgroundColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              // CustomIconButton(
              //     icon: Icons.arrow_back_ios_new_sharp, color: Colors.white),
              SizedBox(height: 30), //
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Text(
                  'Add Task',
                  style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                ),
              ),
              //
              //
              SizedBox(height: 20),
              //
              AddTask(),
            ],
          ),
        ),
      ),
    );
  }
}
