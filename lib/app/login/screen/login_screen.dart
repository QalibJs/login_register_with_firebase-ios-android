import 'package:flutter/material.dart';
import '../widgets/login_button_widget.dart';
import '../../../constants/app_sized_box.dart';
import '../widgets/login_inputs_widget.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_text_styles.dart';
import '../../../constants/app_texts.dart';
import '../widgets/login_to_register.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.scaffoldColor,
        title: Text(
          AppTexts.login,
          style: AppTextStyle.blackBigText,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const LoginInputsWidget(),
          AppSizedBox.h20,
          const LoginButtonWidget(),
          AppSizedBox.h10,
          const LoginToRegister()
        ],
      ),
    );
  }
}
