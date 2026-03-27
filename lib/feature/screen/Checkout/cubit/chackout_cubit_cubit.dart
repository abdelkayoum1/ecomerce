import 'package:bloc/bloc.dart';
import 'package:ecommerce/feature/screen/home_page/data/models/addtocart.dart';
import 'package:meta/meta.dart';

part 'chackout_cubit_state.dart';

class ChackoutCubitCubit extends Cubit<ChackoutCubitState> {
  ChackoutCubitCubit() : super(ChackoutCubitInitial());

  void getproduct() {
    print('good');
    emit(ChackoutCubitloading());

    int numproduct = cart.fold<int>(
      0,
      (previoure, price) => previoure + price.quality,
    );
    print('object');
    emit(
      ChackoutCubitsucces(
        addtocart: cart,
        numproduct: numproduct,
        totalamount: gettotalamount(),
      ),
    );
    print('222222222222222');
  }

  double gettotalamount() {
    double totalamount = cart.fold<double>(
      0,
      (previouse, price) => previouse + (price.quality * price.product.price),
    );

    return totalamount;
  }
}
