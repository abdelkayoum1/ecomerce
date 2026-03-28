import 'package:ecommerce/core/approuter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Shopping extends StatelessWidget {
  final String title;
  const Shopping({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(Approuter.addcard);
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          // alignment: Alignment.bottomCenter,
          //padding: EdgeInsets.symmetric(vertical: 15),
          width: double.infinity,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add, size: 30),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
