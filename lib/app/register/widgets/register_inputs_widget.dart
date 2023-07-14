import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_register_workout/cubit/login/login_cubit.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_texts.dart';
import '../../../global/global_input_widget.dart';

class RegisterinputsWidget extends StatelessWidget {
  const RegisterinputsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    LoginRegisterCubit cubit = context.read<LoginRegisterCubit>();
    return Padding(
      padding: AppPaddings.lr12,
      child: Column(
        children: [
          GlobalInputWidget(
            hintText: AppTexts.email,
            controller: cubit.registerEmailController,
          ),
          AppSizedBox.h10,
          GlobalInputWidget(
              hintText: AppTexts.pasword,
              controller: cubit.registerPasswordController),
          AppSizedBox.h10,
          GlobalInputWidget(
              hintText: AppTexts.pasword,
              controller: cubit.registerAgainPasswordController),
        ],
      ),
    );
  }
}
