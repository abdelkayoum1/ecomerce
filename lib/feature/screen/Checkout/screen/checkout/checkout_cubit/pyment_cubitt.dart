import 'package:bloc/bloc.dart';
import 'package:ecommerce/feature/screen/Checkout/screen/checkout/models/pyment_model.dart';
import 'package:meta/meta.dart';

part 'pyment_state.dart';

class PymentCubitt extends Cubit<PymentState> {
  PymentCubitt() : super(PymentStateinitial());

  void getpyment(
    String cardname,
    String cardholdername,
    String expiredcard,
    String cvv,
  ) {
    emit(PymentStateloading());

    final pymentcard = PymentModel(
      id: DateTime.now().toString(),
      namecard: cardname,
      cardholdername: cardholdername,
      expireddate: expiredcard,
      cvv: cvv,
    );

    Future.delayed(Duration(seconds: 1), () {
      pymentmodel.add(pymentcard);
      emit(PymentStatesucces(pymentmodell: pymentmodel));
    });
  }
}
