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

  void fetchlocation() {
    emit(FetchLocationCubitloading());
    Future.delayed(Duration(seconds: 1), () {
      print('location');
      emit(FetchLocationCubitsucces(location: location));
      print('locationlocationlocation');
    });
  }

  void addlocation(String locationn) {
    emit(AddLocationCubitloading());
    Future.delayed(Duration(seconds: 1), () {
      final addlocation = LocationModel(
        id: DateTime.now().toString(),
        city: locationn.split('-')[0],
        country: locationn.split('-')[1],
      );
      location.add(addlocation);
      print('locationadd');
      emit(AddLocationCubitsucces());
      emit(FetchLocationCubitsucces(location: location));
      print('locationadddddddddddddd');
    });
  }
}
