import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/feature/screen/Checkout/cubit/chackout_cubit_cubit.dart';
import 'package:ecommerce/feature/screen/home_page/data/models/addtocart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Checkout extends StatelessWidget {
  final List<Addtocart> cart;
  const Checkout({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = ChackoutCubitCubit();
        cubit.getproduct();
        return cubit;
      },
      child: Scaffold(
        appBar: AppBar(title: Text('payment'), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: BlocBuilder<ChackoutCubitCubit, ChackoutCubitState>(
            builder: (context, state) {
              if (state is ChackoutCubitfailure) {
                return Center(child: Text(state.error));
              } else if (state is ChackoutCubitsucces) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Adresse',
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        TextButton(onPressed: () {}, child: Text('Edit')),
                      ],
                    ),

                    Text(
                      'Product (${state.numproduct}):',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                ),
                                child: CachedNetworkImage(
                                  imageUrl: cart[index].product.imgUrl,
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Text(cart[index].product.name),

                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          text: 'Size:',
                                          children: [
                                            TextSpan(
                                              text: cart[index].size.name,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        '\$${(cart[index].quality * cart[index].product.price).toStringAsFixed(1)}',

                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(thickness: 2, color: Colors.black);
                      },
                      itemCount: cart.length,
                    ),

                    Text(
                      'Payment Methode',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Amount'),
                        Text('\$${state.totalamount}'),
                      ],
                    ),
                  ],
                );
              } else {
                return Center(child: CircularProgressIndicator.adaptive());
              }
            },
          ),
        ),
      ),
    );
  }
}
