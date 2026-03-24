import 'package:ecommerce/feature/screen/detailproduct/screen/data/model/category_models.dart';
import 'package:flutter/material.dart';

class Catehoryhomepage extends StatelessWidget {
  const Catehoryhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listcategory.length,

      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: listcategory[index].bgColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (index % 2 == 0)
                    Image.asset(
                      'assets/Background (2).png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  Column(
                    children: [
                      Text(
                        listcategory[index].name,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Text(
                        listcategory[index].productsCount.toString(),
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  if (index % 2 != 0)
                    Image.asset(
                      'assets/Background (2).png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
