import 'package:ecommerce/feature/screen/detailproduct/detail_product.dart';
import 'package:ecommerce/feature/screen/home_page/data/models/home_page_mode.dart';
import 'package:ecommerce/feature/screen/nab_bar2/nav_bar_2.dart';
import 'package:go_router/go_router.dart';

class Approuter {
  static final detailproduct = '/detailproduct';
  // GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => NavBar2()),

      GoRoute(
        path: detailproduct,
        builder: (context, state) =>
            DetailProduct(list: state.extra as HomePageModel),
      ),
    ],
  );
}
