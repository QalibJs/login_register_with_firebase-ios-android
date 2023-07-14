import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_register_workout/cubit/login/login_cubit.dart';
import '../../../model/service/auth_service.dart';
import '../../home/screen/home_screen.dart';
import '../../../constants/app_navigatrs.dart';
import '../../../constants/app_texts.dart';

import '../../../constants/app_colors.dart';
import '../../../global/global_button_widget.dart';

class RegisterButtonWidget extends StatelessWidget {
  const RegisterButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    LoginRegisterCubit cubit = context.read<LoginRegisterCubit>();
    return GlobalButtonWidget(
      onPressed: () {
        try {
          AuthService.register(
            cubit.registerEmailController.text.trim(),
            cubit.registerPasswordController.text.trim(),
          );
          AppNavigators.go(context, const HomeScreen());
        } on FirebaseAuthException catch (e) {
          print(e.message);
        }
      },
      text: AppTexts.register,
      color: AppColors.black,
    );
  }
}
