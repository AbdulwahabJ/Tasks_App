import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key,
      required this.icon,
      this.size,
      required this.color,
      this.onPressed});

  final IconData icon;
  final double? size;
  final Color color;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        size: size,
        color: color,
      ),
      onPressed: onPressed,
    );
  }
}
