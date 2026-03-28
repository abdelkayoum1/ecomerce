import 'package:ecommerce/feature/screen/Checkout/screen/checkout/models/pyment_model.dart';
import 'package:flutter/material.dart';

class ListTilee extends StatelessWidget {
  final PymentModel pyment;
  const ListTilee({super.key, required this.pyment});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          leading: Image.asset(
            'assets/Background (2).png',
            width: 50,
            height: 50,
          ),
          title: Text('Master card'),
          subtitle: Text(pyment.namecard),
          trailing: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
