import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginRegisterCubit extends Cubit<int> {
  LoginRegisterCubit() : super(0);

  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  TextEditingController registerEmailController = TextEditingController();
  TextEditingController registerPasswordController = TextEditingController();
  TextEditingController registerAgainPasswordController = TextEditingController();



  @override
  Future<void> close() {
    loginEmailController.dispose();
    loginPasswordController.dispose();
    registerEmailController.dispose();
    registerPasswordController.dispose();
    registerAgainPasswordController.dispose();
    return super.close();
  }
}
