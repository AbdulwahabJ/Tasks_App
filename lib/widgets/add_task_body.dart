import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/cubit/add_task_cubit.dart';
import 'package:tasks_app/models/task_model.dart';

import '../helper/add_task_date_picker.dart';
import '../helper/hour_picker.dart';
import 'add_task_color.dart';
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
  int taskColor = 0;
  DateTime? taskDateTime;
  //
  List<Color> colors = [
    const Color(0xFF7A63FF),
    const Color(0xFF51BEFF),
    const Color(0xFF51CBC3),
    const Color(0xFFFFA79B),
  ];
  //
  int count = 0;
  int colorCounter = 0;
  //
  @override
  Widget build(BuildContext context) {
    //

    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            AddTaskDtePicker(
              onDateChange: (value) {
                taskDateTime = value;
              },
            ),
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
                taskContent = value!;
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 150,
                  child: HourPicker(
                    onSaved: (value) {
                      startTime = value;
                    },
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: HourPicker(
                    onSaved: (value) {
                      endTime = value;
                    },
                  ),
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
            SizedBox(
                height: 20 * 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            colorCounter = index;
                            setState(() {});
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: ColorItem(
                              isActive: colorCounter == index,
                              color: colors[
                                  count == colors.length ? count = 0 : count++],
                            ),
                          ),
                        );
                      }),
                )),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTextButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();

                      var taskModel = TaskModel(
                        taskContent: taskContent!,
                        startTime: startTime!,
                        endTime: endTime!,
                        taskState: TaskState.upcoming,
                        taskColor: colors[colorCounter].value,
                        taskDate: taskDateTime!,
                      );

                      BlocProvider.of<AddTaskCubit>(context).addTask(taskModel);
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
