import 'package:flutter/material.dart';

class Textfieled1 extends StatelessWidget {
  final String text;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final TextEditingController title;
  final bool obscureText;
  const Textfieled1({
    super.key,
    required this.text,
    required this.obscureText,
    this.prefixIcon,
    this.sufixIcon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: title,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'le champ$title est vide';
        }
        return null;
      },

      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: sufixIcon,
        hintText: text,
        // fillColor: Colors.grey.shade200,
        // filled: true,
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}
