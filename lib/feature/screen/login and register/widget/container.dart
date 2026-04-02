import 'package:ecommerce/core/approuter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Containerr extends StatelessWidget {
  final String title;
  final Color color;
  final TextAlign? textAlign;
  const Containerr({
    super.key,
    required this.title,
    required this.color,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //  color: Colors.red,
      child: Text(
        textAlign: textAlign,
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
          // fontWeight: FontWeight.bold,
          color: color,
          fontSize: 15,
        ),
      ),
    );
  }
}
