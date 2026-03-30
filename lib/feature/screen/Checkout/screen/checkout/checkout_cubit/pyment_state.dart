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

final class FetchPymentStatesucces extends PymentState {
  final List<PymentModel> pymentmodell;

  FetchPymentStatesucces({required this.pymentmodell});
}

final class Fetchloading extends PymentState {}

final class FetchPymentStateFailure extends PymentState {
  final String msj;

  FetchPymentStateFailure({required this.msj});
}

final class Confirmemethodeloading extends PymentState {
  Confirmemethodeloading();
}

final class Confirmemethodesucces extends PymentState {
  final String? checked;
  final PymentModel pyentcard;

  Confirmemethodesucces({this.checked, required this.pyentcard});
}

final class Confirmemethodefailure extends PymentState {
  final String msj;

  Confirmemethodefailure({required this.msj});
}
