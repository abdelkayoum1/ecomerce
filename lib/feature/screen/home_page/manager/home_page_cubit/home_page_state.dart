import 'package:ecommerce/feature/screen/home_page/data/models/home_page_mode.dart';

class HomePageState {}

final class Homepageinitial extends HomePageState {}

final class Homepagelaoding extends HomePageState {}

final class Homepagesucces extends HomePageState {
  final List<HomePageModel> list;

  Homepagesucces({required this.list});
}

final class Homepagefailure extends HomePageState {
  final String error;

  Homepagefailure({required this.error});
}
