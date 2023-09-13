import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 320,
      decoration: const BoxDecoration(
          color: Color(0xFFDDDDFF),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: const Padding(
        padding: EdgeInsets.only(left: 16, top: 10, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '9:00-9:30',
              style: TextStyle(
                fontSize: 13,
                color: Colors.black54,
              ),
            ),
            Text(
              'Flutter course in Udemy',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '30 minutes',
              style: TextStyle(
                fontSize: 13,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
