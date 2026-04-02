import 'dart:math';

import 'package:ecommerce/feature/screen/Checkout/screen/checkout/checkout.dart';
import 'package:ecommerce/feature/screen/Checkout/screen/checkout/widjet/add_new_card.dart';
import 'package:ecommerce/feature/screen/detailproduct/screen/detail_product.dart';
import 'package:ecommerce/feature/screen/home_page/data/models/addtocart.dart';
import 'package:ecommerce/feature/screen/home_page/data/models/home_page_mode.dart';
import 'package:ecommerce/feature/screen/locationn/data/cubit/location_cubit_cubit.dart';
import 'package:ecommerce/feature/screen/locationn/location.dart';
import 'package:ecommerce/feature/screen/login%20and%20register/login.dart';
import 'package:ecommerce/feature/screen/login%20and%20register/resgister.dart';
import 'package:ecommerce/feature/screen/nab_bar2/nav_bar_2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Approuter {
  static final detailproduct = '/detailproduct';
  static final checkout = '/checkout';
  static final addcard = '/addcard';
  static final location = '/location';
  static final navbar2 = '/navbar2';
  // static final register = '/register';
  static final login = '/login';

  // GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(path: navbar2, builder: (context, state) => NavBar2()),

      GoRoute(
        path: detailproduct,
        builder: (context, state) =>
            DetailProduct(list: state.extra as HomePageModel),
      ),

      GoRoute(
        path: checkout,
        builder: (context, state) =>
            Checkout(cart: state.extra as List<Addtocart>),
      ),
      GoRoute(path: addcard, builder: (context, state) => AddNewCard()),

      GoRoute(
        path: location,
        builder: (context, state) => BlocProvider(
          create: (context) => LocationCubitCubit(),
          child: Location(),
        ),
      ),
      GoRoute(path: login, builder: (context, state) => Loginn()),
      GoRoute(path: '/', builder: (context, state) => Register()),
    ],
  );
}
