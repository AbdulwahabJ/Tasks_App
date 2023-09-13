import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

import '../constant.dart';

class DAtePicker extends StatefulWidget {
  const DAtePicker({super.key});

  @override
  State<DAtePicker> createState() => _DAtePickerState();
}

class _DAtePickerState extends State<DAtePicker> {
  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        //`selectedDate` the new date selected.
      },
      activeColor: kWhiteColor,
      headerProps: const EasyHeaderProps(
        selectedDateStyle: TextStyle(
            fontSize: 16, color: kWhiteColor, fontWeight: FontWeight.bold),
        monthStyle: TextStyle(
            fontSize: 16, color: kWhiteColor, fontWeight: FontWeight.bold),
        monthPickerType: MonthPickerType.switcher,
        selectedDateFormat: SelectedDateFormat.dayOnly,
      ),
      dayProps: const EasyDayProps(
        width: 55.0,
        height: 70,
        todayStyle: DayStyle(
          monthStrStyle: TextStyle(
              fontSize: 10, color: kWhiteColor, fontWeight: FontWeight.bold),
          dayStrStyle: TextStyle(
              fontSize: 10, color: kWhiteColor, fontWeight: FontWeight.bold),
          dayNumStyle: TextStyle(
              fontSize: 20, color: kWhiteColor, fontWeight: FontWeight.bold),
        ),
        activeDayStyle: DayStyle(
          dayNumStyle: TextStyle(
              fontSize: 16,
              color: kSecondaryColor,
              fontWeight: FontWeight.bold),
          monthStrStyle: TextStyle(
              fontSize: 10,
              color: kSecondaryColor,
              fontWeight: FontWeight.bold),
          dayStrStyle: TextStyle(
              fontSize: 10,
              color: kSecondaryColor,
              fontWeight: FontWeight.bold),
          borderRadius: 10.0,
        ),
        inactiveDayStyle: DayStyle(
          decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          monthStrStyle: TextStyle(
              fontSize: 10, color: kWhiteColor, fontWeight: FontWeight.bold),
          dayNumStyle: TextStyle(
              fontSize: 16, color: kWhiteColor, fontWeight: FontWeight.bold),
          dayStrStyle: TextStyle(
              fontSize: 10, color: kWhiteColor, fontWeight: FontWeight.bold),
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
