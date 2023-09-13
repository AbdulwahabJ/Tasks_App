import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class CardStepper extends StatelessWidget {
  const CardStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: Color(0xFF7A63FF),
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Icon(
            Icons.done,
            size: 22,
          ),
        ),
        const SizedBox(height: 4),
        // const SizedBox(height: 10),
        const SizedBox(
          height: 100,
          child: Dash(
              direction: Axis.vertical,
              length: 95,
              dashLength: 5,
              dashGap: 3,
              dashColor: Colors.blue),
        ),
      ],
    );
  }
}
