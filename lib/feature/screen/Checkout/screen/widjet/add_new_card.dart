import 'package:ecommerce/feature/screen/Checkout/screen/widjet/textfieled.dart';
import 'package:flutter/material.dart';

class AddNewCard extends StatelessWidget {
  const AddNewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add New Card')),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Card Number'),
            SizedBox(height: 10),
            Textfieled(
              title: 'Add Card Number',
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            Text('Card Holder Name'),
            SizedBox(height: 10),
            Textfieled(title: 'Enter Holde Name'),
            SizedBox(height: 10),
            Text('Expired'),
            SizedBox(height: 10),
            Textfieled(title: 'MM/YY'),
            SizedBox(height: 10),
            Text('Cvv Code'),
            SizedBox(height: 10),
            Textfieled(title: 'Cvv'),
          ],
        ),
      ),
    );
  }
}
