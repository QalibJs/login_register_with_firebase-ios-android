import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_styles.dart';
import '../../../constants/app_texts.dart';

import '../widgets/register_button_widget.dart';
import '../widgets/register_inputs_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.scaffoldColor,
        centerTitle: true,
        foregroundColor: AppColors.black,
        title: Text(
          AppTexts.register,
          style: AppTextStyle.blackBigText,
        ),
      ),
      body: Column(
        children: [
          const RegisterinputsWidget(),
          AppSizedBox.h20,
          const RegisterButtonWidget(),
        ],
      ),
    );
  }
}
