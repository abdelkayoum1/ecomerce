import 'package:bloc/bloc.dart';
import 'package:ecommerce/feature/screen/Checkout/screen/checkout/models/pyment_model.dart';
import 'package:flutter/material.dart';
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

  void fetchpyment() {
    print('khelifa');
    emit(Fetchloading());
    Future.delayed(Duration(seconds: 1), () {
      if (pymentmodel.isNotEmpty) {
        print('khelifa  succes');
        emit(FetchPymentStatesucces(pymentmodell: pymentmodel));
        print('khelifa succes succes');
      } else {
        emit(FetchPymentStateFailure(msj: 'not pyment found'));
      }
    });
  }

  void confirmemethode(String id) {
    emit(Confirmemethodeloading());
    final confirmeindex = pymentmodel.firstWhere(
      (item) => item.id == id,
      //  orElse: () => pymentmodel.first,
    );
    print('index :$confirmeindex');
    Future.delayed(Duration(seconds: 1), () {
      print('jijel');
      emit(Confirmemethodesucces(pyentcard: confirmeindex));
      print('jijeljijeljijel');
    });
  }
}
