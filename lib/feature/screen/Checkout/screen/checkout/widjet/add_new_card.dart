import 'package:ecommerce/feature/screen/Checkout/cubit/chackout_cubit_cubit.dart';
import 'package:ecommerce/feature/screen/Checkout/screen/checkout/checkout_cubit/pyment_cubitt.dart';
import 'package:ecommerce/feature/screen/Checkout/screen/checkout/widjet/textfieled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({super.key});

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  TextEditingController carname = TextEditingController();
  TextEditingController holdername = TextEditingController();

  TextEditingController date = TextEditingController();

  TextEditingController cvv = TextEditingController();
  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add New Card')),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: SingleChildScrollView(
          child: Form(
            key: key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Card Number'),
                SizedBox(height: 10),
                Textfieled(
                  prefixIcon: Icon(Icons.credit_card),
                  controller: carname,
                  title: 'Add Card Number',
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                Text('Card Holder Name'),
                SizedBox(height: 10),
                Textfieled(
                  prefixIcon: Icon(Icons.person),
                  controller: holdername,
                  title: 'Enter Holde Name',
                ),
                SizedBox(height: 10),
                Text('Expired'),
                SizedBox(height: 10),
                Textfieled(
                  keyboardType: TextInputType.number,
                  prefixIcon: Icon(Icons.date_range),
                  controller: date,
                  title: 'add date card',
                ),
                SizedBox(height: 10),
                Text('Cvv Code'),
                SizedBox(height: 10),
                Textfieled(
                  keyboardType: TextInputType.number,
                  prefixIcon: Icon(Icons.password),
                  controller: cvv,
                  title: 'Cvv',
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: BlocConsumer<PymentCubitt, PymentState>(
                    listener: (context, state) {
                      if (state is PymentStatesucces) {
                        Navigator.pop(context);
                      } else if (state is PymentStatefailure) {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(state.error)));
                      }
                    },
                    builder: (context, state) {
                      if (state is PymentStateloading) {
                        return ElevatedButton(
                          onPressed: null,
                          child: CircularProgressIndicator.adaptive(),
                        );
                      }
                      return ElevatedButton(
                        onPressed: () {
                          if (key.currentState!.validate()) {
                            context.read<PymentCubitt>().getpyment(
                              carname.text,
                              holdername.text,
                              date.text,
                              cvv.text,
                            );
                          }
                        },
                        child: Text('Add Card'),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          foregroundColor: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
