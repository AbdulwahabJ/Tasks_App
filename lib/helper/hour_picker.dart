import 'package:flutter/material.dart';

class HourPicker extends StatefulWidget {
  const HourPicker({super.key});

  @override
  State<HourPicker> createState() => _HourPickerState();
}

class _HourPickerState extends State<HourPicker> {
  TimeOfDay? newTimecheck;

  TimeOfDay _time = const TimeOfDay(hour: 7, minute: 15);
  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
    //
    newTimecheck = newTime;
  }

  void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    String? ss = newTimecheck == null ? null : newTimecheck!.format(context);

    return TextFormField(
      showCursor: false,
      onTap: _selectTime,
      onSaved: onSaved,
      validator: (value) {
        value = ss;
        if (value?.isEmpty ?? true) {
          return 'chose time ';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        filled: true,
        hintText: newTimecheck == null ? '' : _time.format(context),
        fillColor: const Color(0xFFF2F2F2),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(18),
          ),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}


/**
 *  GestureDetector(
          onTap: _selectTime,
          child: Container(
            height: 58,
            width: 150,
            decoration: const BoxDecoration(
              color: Color(0xFFF2F2F2),
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 70,
                  child: Text(
                    newTimecheck == null ? '' : _time.format(context),
                  ),
                ),
                SizedBox(
                    width: 20,
                    child: Icon(
                      Icons.access_time_rounded,
                      size: 30,
                      color: Colors.black.withOpacity(.4),
                    ))
              ],
            ),
          ),
        ),
 * 
 * 
 */