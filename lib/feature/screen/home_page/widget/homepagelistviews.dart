import 'package:ecommerce/core/approuter.dart';
import 'package:ecommerce/feature/screen/home_page/data/models/home_page_mode.dart';
import 'package:ecommerce/feature/screen/home_page/home_page.dart';
import 'package:ecommerce/feature/screen/home_page/manager/home_page_cubit/home_page_cubit.dart';
import 'package:ecommerce/feature/screen/home_page/manager/home_page_cubit/home_page_state.dart';
import 'package:ecommerce/feature/screen/home_page/widget/home_page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomepageListviews extends StatelessWidget {
  const HomepageListviews({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        mainAxisExtent: 240,
        // childAspectRatio: 7,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            GoRouter.of(
              context,
            ).push(Approuter.detailproduct, extra: list[index]);
          },
          child: Homepageitem(model: list[index]),
        );
      },
    );
  }
}
