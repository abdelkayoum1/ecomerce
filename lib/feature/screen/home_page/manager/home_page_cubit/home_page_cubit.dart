import 'package:ecommerce/feature/screen/home_page/data/models/home_page_mode.dart';
import 'package:ecommerce/feature/screen/home_page/manager/home_page_cubit/home_page_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(Homepageinitial());

  void product() async {
    emit(Homepagelaoding());

    await Future.delayed(Duration(seconds: 1), () {
      print('succes');
      if (!isClosed) {
        emit(Homepagesucces(list: list));
      }
    });
  }
}
