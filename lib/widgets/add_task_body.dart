import 'package:flutter/material.dart';

import '../helper/add_task_date_picker.dart';
import '../helper/hour_picker.dart';
import 'color_list_view.dart';
import 'custom_text_button.dart';
import 'custom_text_field.dart';

class AddTaskBody extends StatefulWidget {
  const AddTaskBody({
    super.key,
  });

  @override
  State<AddTaskBody> createState() => _AddTaskBodyState();
}

class _AddTaskBodyState extends State<AddTaskBody> {
  //
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  //
  String? taskContent, startTime, endTime;
  //
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const AddTaskDtePicker(),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 28),
              child: Text(
                'Task Name',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6),
              child: CustomTextField(onSaved: (value) {
                taskContent = value;
              }),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                SizedBox(width: 28),
                Text(
                  'Start Time',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(width: 105),
                Text(
                  'End Time',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(height: 35),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 150,
                  child: HourPicker(),
                ),
                SizedBox(
                  width: 150,
                  child: HourPicker(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                'Color',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              height: 20 * 2,
              child: ColorListView(),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTextButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      autovalidateMode = AutovalidateMode.disabled;
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(width: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
