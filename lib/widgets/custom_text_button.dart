import 'package:flutter/material.dart';

import '../constant.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onPressed,
  });
//
  final void Function()? onPressed;
//
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 150,
      decoration: const BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: TextButton(
        onPressed: onPressed,
        child: const Text(
          'Add',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}
