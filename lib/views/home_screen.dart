import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constant.dart';
import '../helper/date_picker.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/tasks_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const id = '/HomeScreen';

  @override
  Widget build(BuildContext context) {
    //
    var currentDate = DateTime.now();
    var formattedCuttentDate = DateFormat.yMMM().format(currentDate);
    //
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          const CustomAbbBar(),
          //
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: Text(
              formattedCuttentDate,
              style: const TextStyle(
                  color: kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'),
            ),
          ),
          //
          const SizedBox(height: 8),
          //
          const DAtePicker(),
          //
          const SizedBox(height: 20),
          //
          const TasksBody(),
        ],
      ),
    );
  }
}
