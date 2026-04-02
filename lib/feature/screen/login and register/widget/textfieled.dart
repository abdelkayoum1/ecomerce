import 'package:flutter/material.dart';

class Textfieled1 extends StatelessWidget {
  final String text;
  final Widget? prefixIcon;
  final Widget? sufixicon;
  final TextEditingController title;
  const Textfieled1({
    super.key,
    required this.text,
    this.prefixIcon,
    this.sufixicon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: title,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'le champ$title est vide';
        }
      },

      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: sufixicon,
        hintText: text,
        fillColor: Colors.grey.shade200,
        filled: true,
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}
