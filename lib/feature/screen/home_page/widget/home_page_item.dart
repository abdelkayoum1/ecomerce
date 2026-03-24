import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/feature/screen/home_page/data/models/home_page_mode.dart';
import 'package:ecommerce/feature/screen/home_page/manager/home_page_cubit/home_page_cubit.dart';
import 'package:ecommerce/feature/screen/home_page/manager/home_page_cubit/home_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepageitem extends StatelessWidget {
  final HomePageModel model;
  const Homepageitem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = HomePageCubit();
        cubit.product();
        return cubit;
      },
      child: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) {
          if (state is Homepagefailure) {
            return Center(child: Text(state.error));
          } else if (state is Homepagesucces) {
            return Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),

                        // color: Colors.red,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: CachedNetworkImage(
                          imageUrl: model.imgUrl,
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                        /*
                         Image.network(model.imgUrl, fit: BoxFit.cover),
                         */
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                          // color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  model.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  model.description,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text(
                  '\$${model.price}',
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            );
          } else {
            return Center(child: CircularProgressIndicator.adaptive());
          }
        },
      ),
    );
  }
}
