import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../cubit/login/login_cubit.dart';
import '../../../model/service/auth_service.dart';
import '../../home/screen/home_screen.dart';
import '../../../constants/app_navigatrs.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_texts.dart';
import '../../../global/global_button_widget.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    LoginRegisterCubit cubit = context.read<LoginRegisterCubit>();
    return GlobalButtonWidget(
      text: AppTexts.login,
      color: AppColors.black,
      onPressed: () async {
        try {
          await AuthService.login(
            cubit.loginEmailController.text.trim(),
            cubit.loginPasswordController.text.trim(),
          );
          // ignore: use_build_context_synchronously
          AppNavigators.go(context, const HomeScreen());
        } on FirebaseAuthException catch (e) {
          print("aaaaaaaaaaa   ${e.message}");
        }
      },
    );
  }
}
