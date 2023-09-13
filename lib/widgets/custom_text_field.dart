import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.onSaved,
  });
  //
  final void Function(String?)? onSaved;
  //
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      decoration: const InputDecoration(
        filled: true,
        fillColor: Color(0xFFF2F2F2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(18),
          ),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
