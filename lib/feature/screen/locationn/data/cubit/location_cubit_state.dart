part of 'location_cubit_cubit.dart';

@immutable
sealed class LocationCubitState {}

final class LocationCubitInitial extends LocationCubitState {}

final class LocationCubitloading extends LocationCubitState {}

final class LocationCubitsucces extends LocationCubitState {}
