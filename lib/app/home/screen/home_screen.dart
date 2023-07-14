import 'package:flutter/material.dart';
import 'package:login_register_workout/app/login/screen/login_screen.dart';
import 'package:login_register_workout/constants/app_navigatrs.dart';
import 'package:login_register_workout/model/service/auth_service.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_texts.dart';
import '../../../global/global_button_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldColor,
        elevation: 0,
        title: Text(AppTexts.primaryText),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GlobalButtonWidget(
              onPressed: () {
                AuthService.logout();
                AppNavigators.go(context, const LoginScreen());
              },
              text: AppTexts.logOut,
              color: AppColors.black,
            )
          ],
        ),
      ),
    );
  }
}
