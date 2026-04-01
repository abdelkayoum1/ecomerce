import 'package:flutter/material.dart';

class Textfieledd extends StatelessWidget {
  final String title;
  final Widget? prefixIcon;
  final Widget? sufixe;
  final TextEditingController? controller;
  const Textfieledd({
    super.key,
    required this.title,
    required this.controller,
    this.prefixIcon,
    this.sufixe,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: sufixe,
        fillColor: Colors.grey.shade200,
        filled: true,
        hint: Text(title),
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}
