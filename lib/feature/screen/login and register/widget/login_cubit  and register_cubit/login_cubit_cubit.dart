import 'package:bloc/bloc.dart';
import 'package:ecommerce/feature/screen/login%20and%20register/data/repo/login_repo_imp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_cubit_state.dart';

class LoginCubitCubit extends Cubit<LoginCubitState> {
  final LoginRepoImp loginrepo;
  LoginCubitCubit(this.loginrepo) : super(LoginCubitInitial());

  Future<void> loginn(String email, String password) async {
    try {
      emit(LoginCubitlaoding());
      final user = await loginrepo.login(email: email, password: password);

      if (user) {
        emit(LoginCubitsucces());
        print('loginsucces');
      } else {
        emit(LoginCubitfailure(error: 'error'));
      }
    } catch (e) {
      emit(LoginCubitfailure(error: e.toString()));
    }
  }

  Future<void> sign(String email, String password) async {
    try {
      emit(RegisterCubitlaoding());
      final user = await loginrepo.sign(email: email, password: password);

      if (user) {
        print('succes');
        emit(RegisterCubitsucces());
        print('succes222');
      } else {
        emit(RegisterCubitfailure(error: 'error'));
      }
    } catch (e) {
      emit(RegisterCubitfailure(error: e.toString()));
    }
  }
}
