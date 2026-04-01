part of 'location_cubit_cubit.dart';

@immutable
sealed class LocationCubitState {}

final class FetchLocationCubitInitial extends LocationCubitState {}

final class FetchLocationCubitloading extends LocationCubitState {}

final class FetchLocationCubitsucces extends LocationCubitState {
  final List<LocationModel> location;

  FetchLocationCubitsucces({required this.location});
}

final class FetchLocationCubitfailure extends LocationCubitState {}

final class LocationCubitInitial extends LocationCubitState {}

final class LocationCubitloading extends LocationCubitState {}

final class LocationCubitsucces extends LocationCubitState {}

final class AddLocationCubitloading extends LocationCubitState {}

final class AddLocationCubitsucces extends LocationCubitState {}

final class AddLocationCubitfailure extends LocationCubitState {
  final String error;

  AddLocationCubitfailure({required this.error});
}
