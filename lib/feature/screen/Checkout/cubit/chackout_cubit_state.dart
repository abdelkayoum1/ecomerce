part of 'chackout_cubit_cubit.dart';

@immutable
sealed class ChackoutCubitState {}

final class ChackoutCubitInitial extends ChackoutCubitState {}

final class ChackoutCubitloading extends ChackoutCubitState {}

final class ChackoutCubitsucces extends ChackoutCubitState {
  final List<Addtocart> addtocart;
  final int numproduct;
  final double totalamount;
  final PymentModel? choosepyment;
  final LocationModel? choselocation;

  ChackoutCubitsucces({
    this.choselocation,
    required this.addtocart,
    required this.numproduct,
    required this.totalamount,
    this.choosepyment,
  });
}

final class ChackoutCubitfailure extends ChackoutCubitState {
  final String error;

  ChackoutCubitfailure({required this.error});
}
