import 'package:ecommerce/feature/screen/detailproduct/manager/cubit/detail_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatelessWidget {
  final int value;
  final String quality;
  final dynamic cubit;
  const Counter({
    super.key,
    required this.value,
    required this.quality,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              if (value > 0) {
                context.read<DetailCubitCubit>().deirement(quality);
              } else {}
            },
            icon: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,

                shape: BoxShape.circle,
              ),
              child: Icon(Icons.remove, color: Colors.black),
            ),
          ),

          Text(
            value.toString(),
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
          ),

          IconButton(
            onPressed: () {
              context.read<DetailCubitCubit>().increment(quality);
            },
            icon: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
