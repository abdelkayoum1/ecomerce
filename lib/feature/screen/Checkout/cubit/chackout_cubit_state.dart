part of 'chackout_cubit_cubit.dart';

@immutable
sealed class ChackoutCubitState {}

final class ChackoutCubitInitial extends ChackoutCubitState {}

final class ChackoutCubitloading extends ChackoutCubitState {}

final class ChackoutCubitsucces extends ChackoutCubitState {
  final List<Addtocart> addtocart;
  final int numproduct;
  final totalamount;

  ChackoutCubitsucces({
    required this.addtocart,
    required this.numproduct,
    required this.totalamount,
  });
}

final class ChackoutCubitfailure extends ChackoutCubitState {
  final String error;

  ChackoutCubitfailure({required this.error});
}
