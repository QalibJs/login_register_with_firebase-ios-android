import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  static get whiteMiddleText => TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );
  static get toRegister => TextStyle(
        color: AppColors.blue,
        fontWeight: FontWeight.bold,
        fontSize: 17,
      );
  static get blackMiddleText => TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );
  static get whiteBigText => TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      );
  static get blackBigText => TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      );
}
