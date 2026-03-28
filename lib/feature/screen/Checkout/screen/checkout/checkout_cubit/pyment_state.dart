part of 'pyment_cubitt.dart';

@immutable
sealed class PymentState {}

final class PymentStateinitial extends PymentState {}

final class PymentStateloading extends PymentState {}

final class PymentStatesucces extends PymentState {
  final List<PymentModel> pymentmodell;

  PymentStatesucces({required this.pymentmodell});
}

final class PymentStatefailure extends PymentState {
  final String error;

  PymentStatefailure({required this.error});
}
