part of 'detail_cubit_cubit.dart';

sealed class DetailCubitState {}

final class DetailCubitInitial extends DetailCubitState {}

final class DetailCubitcounterqualiter extends DetailCubitState {
  final int quality;

  DetailCubitcounterqualiter({required this.quality});
}
