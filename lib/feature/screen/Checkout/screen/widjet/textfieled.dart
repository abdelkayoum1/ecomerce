import 'package:flutter/material.dart';

class Textfieled extends StatelessWidget {
  final String title;
  final TextInputType? keyboardType;
  const Textfieled({super.key, required this.title, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        filled: true,
        hint: Text(title),
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}
