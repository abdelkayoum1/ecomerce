import 'package:ecommerce/feature/screen/widget/homepage_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Homepageappbar(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Home'), SizedBox(width: 400), Text('Category')],
          ),
        ],
      ),
    );
  }
}
