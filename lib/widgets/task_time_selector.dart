import 'package:flutter/material.dart';

class TaskTimeSelector extends StatelessWidget {
  const TaskTimeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: 150,
      decoration: const BoxDecoration(
          color: Color(0xFFF2F2F2),
          borderRadius: BorderRadius.all(Radius.circular(18))),
    );
  }
}
