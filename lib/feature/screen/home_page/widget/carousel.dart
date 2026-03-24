import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/feature/screen/home_page/data/models/home_page_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel.builder(
      options: FlutterCarouselOptions(
        height: 200.0,

        showIndicator: true,
        // autoPlay: true,
        slideIndicator: CircularSlideIndicator(),
      ),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return Padding(
          padding: const EdgeInsetsDirectional.only(end: 8.0),
          child: CachedNetworkImage(
            imageUrl: list[itemIndex].imgUrl,
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          /*
           Image.network(
            fit: BoxFit.fill,
            list[itemIndex].imgUrl,
            color: Colors.red,
            height: 50,
            width: double.infinity,
          ),
          */
        );
      },
    );
  }
}
