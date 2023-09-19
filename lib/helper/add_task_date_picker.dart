import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';

import '../constant.dart';

class AddTaskDtePicker extends StatefulWidget {
  const AddTaskDtePicker({super.key, required onDateChange});

  @override
  State<AddTaskDtePicker> createState() => _AddTaskDtePickerState();
}

void Function(DateTime)? onDateChange;

class _AddTaskDtePickerState extends State<AddTaskDtePicker> {
  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: onDateChange,
      activeColor: kSecondaryColor,
      headerProps: const EasyHeaderProps(
        selectedDateStyle: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        monthStyle: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        monthPickerType: MonthPickerType.switcher,
        selectedDateFormat: SelectedDateFormat.dayOnly,
      ),
      dayProps: const EasyDayProps(
        width: 55.0,
        height: 70,
        todayStyle: DayStyle(
          monthStrStyle: TextStyle(
              fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),
          dayStrStyle: TextStyle(
              fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),
          dayNumStyle: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        activeDayStyle: DayStyle(
          dayNumStyle: TextStyle(
              fontSize: 16, color: kWhiteColor, fontWeight: FontWeight.bold),
          monthStrStyle: TextStyle(
              fontSize: 10, color: kWhiteColor, fontWeight: FontWeight.bold),
          dayStrStyle: TextStyle(
              fontSize: 10, color: kWhiteColor, fontWeight: FontWeight.bold),
          borderRadius: 10.0,
        ),
        inactiveDayStyle: DayStyle(
          decoration: BoxDecoration(
              color: Color(0xFFF2F2F2),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          monthStrStyle: TextStyle(
              fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),
          dayNumStyle: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          dayStrStyle: TextStyle(
              fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),
          borderRadius: 20.0,
        ),
      ),
      timeLineProps: const EasyTimeLineProps(
        hPadding: 16.0, // padding from left and right
        separatorPadding: 8.0, // padding between days
      ),
    );
  }
}
