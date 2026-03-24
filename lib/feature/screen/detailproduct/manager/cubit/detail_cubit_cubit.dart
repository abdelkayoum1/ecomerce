import 'package:bloc/bloc.dart';
import 'package:ecommerce/feature/screen/home_page/data/models/home_page_mode.dart';

part 'detail_cubit_state.dart';

class DetailCubitCubit extends Cubit<DetailCubitState> {
  DetailCubitCubit() : super(DetailCubitcounterqualiter(quality: 0));

  void increment(String qualityid) {
    final selectedindex = list.indexWhere(
      (listequality) => listequality.id == qualityid,
    );

    list[selectedindex] = list[selectedindex].copyWith(
      quality: list[selectedindex].quality + 1,
    );
    print("object");
    emit(DetailCubitcounterqualiter(quality: list[selectedindex].quality));
  }

  void deirement(String qualityid) {
    final selectedindex = list.indexWhere((index) => index.id == qualityid);
    list[selectedindex] = list[selectedindex].copyWith(
      quality: list[selectedindex].quality - 1,
    );
    emit(DetailCubitcounterqualiter(quality: list[selectedindex].quality));
  }
}
