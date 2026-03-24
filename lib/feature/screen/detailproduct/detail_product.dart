import 'package:ecommerce/feature/screen/home_page/data/models/home_page_mode.dart';
import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  final HomePageModel list;
  const DetailProduct({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Detail Product'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_sharp)),
          ],
        ),
        body: Stack(
          children: [
            Container(
              height: size * 0.5,
              decoration: BoxDecoration(color: Colors.grey.shade200),
              // color: Colors.green,
              // width: double.infinity,
              // height: 250,
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Image.network(
                    list.imgUrl,
                    height: size * 0.4,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: size * 0.5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
