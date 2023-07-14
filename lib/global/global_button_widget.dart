import 'package:flutter/material.dart';

import '../../constants/app_text_styles.dart';
import '../constants/app_paddings.dart';
import '../constants/elevated_button_styles.dart';

class GlobalButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final Color? color;
  final TextStyle? textStyle;
  const GlobalButtonWidget({
    Key? key,
    this.onPressed,
    required this.text,
    this.color,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppPaddings.lr12,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () => onPressed!(),
        style: AppElevatedStyles.elevatedButtonStyle(color!),
        child: Text(
          text,
          style: AppTextStyle.whiteMiddleText,
        ),
      ),
    );
  }
}
