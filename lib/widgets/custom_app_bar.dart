import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tasks_app/views/add_task_screen.dart';

import '../constant.dart';
import 'custom_icon_button.dart';

class CustomAbbBar extends StatelessWidget {
  const CustomAbbBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomIconButton(
              color: kWhiteColor,
              icon: FontAwesomeIcons.barsStaggered,
              size: 28,
              onPressed: () {},
            ),
            CustomIconButton(
              color: kWhiteColor,
              icon: Icons.add_box_rounded,
              size: 38,
              onPressed: () {
                Navigator.pushNamed(context, AddTaskScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
