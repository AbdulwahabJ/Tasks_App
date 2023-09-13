import 'package:flutter/material.dart';

import 'card_stepper.dart';
import 'custom_card.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 132,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 10),
          CardStepper(),
          SizedBox(width: 14),
          CustomCard(),
        ],
      ),
    );
  }
}
