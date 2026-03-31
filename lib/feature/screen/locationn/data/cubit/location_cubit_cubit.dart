import 'package:bloc/bloc.dart';
import 'package:ecommerce/feature/screen/locationn/model/location_model.dart';
import 'package:meta/meta.dart';

part 'location_cubit_state.dart';

class LocationCubitCubit extends Cubit<LocationCubitState> {
  LocationCubitCubit() : super(LocationCubitInitial());

  void confirmelocation(LocationModel? id, String idd) {
    emit(LocationCubitloading());

    Future.delayed(Duration(seconds: 1), () {
      final confirmeindex = location.firstWhere(
        (location) => location.id == idd,
      );
      emit(LocationCubitsucces());
    });
  }
}
