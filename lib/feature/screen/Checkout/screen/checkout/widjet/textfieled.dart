import 'package:flutter/material.dart';

class Textfieled extends StatelessWidget {
  final String title;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  const Textfieled({
    super.key,
    this.prefixIcon,
    required this.title,
    this.keyboardType,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // validator:(value) => value.isEmpty,
      controller: controller,
      keyboardType: keyboardType,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$title! your champ is vide';
        }
        return null;
      },
      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        fillColor: Colors.grey.shade200,
        filled: true,
        hint: Text(title),
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}
