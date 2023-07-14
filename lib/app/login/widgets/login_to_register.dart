import 'package:flutter/material.dart';
import '../../register/screen/register_screen.dart';
import '../../../constants/app_navigatrs.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_text_styles.dart';
import '../../../constants/app_texts.dart';

class LoginToRegister extends StatelessWidget {
  const LoginToRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppNavigators.go(context, const RegisterScreen());
      },
      child: Container(
        margin: AppPaddings.lr24,
        color: AppColors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              AppTexts.toRegister,
              style: AppTextStyle.toRegister,
            ),
          ],
        ),
      ),
    );
  }
}
