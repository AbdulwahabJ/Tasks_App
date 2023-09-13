import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.isActive,
    required this.color,
  });
  final isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 20,
            backgroundColor: const Color.fromARGB(255, 203, 203, 203),
            child: CircleAvatar(radius: 15, backgroundColor: color),
          )
        : CircleAvatar(radius: 15, backgroundColor: color);
  }
}
