import 'package:dalel_project/core/constants/app_colors.dart';
import 'package:dalel_project/core/constants/app_strings.dart';

import 'package:dalel_project/core/functions/show_toast.dart';
import 'package:dalel_project/core/widgets/custom_button.dart';
import 'package:dalel_project/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_project/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:dalel_project/features/auth/presentation/widgets/custom_text_field.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomForgotPasswordForm extends StatelessWidget {
  const CustomForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ResetPasswordSuccessState) {
          showToastMassege("Check Your Email to Reset Password");
        } else if (state is ResetPasswordFailureState) {
          showToastMassege(state.errorMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: authCubit.resetPasswordKey,
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: AppStrings.emailAddress,
                  onChanged: (email) {
                    authCubit.email = email;
                  },
                ),

                SizedBox(height: 129),
                state is SignInLoadingState
                    ? CircularProgressIndicator(color: AppColors.primaryColor)
                    : CustomButton(
                        text: AppStrings.sendResetPasswordLink,
                        onPressed: () {
                          if (authCubit.resetPasswordKey.currentState!.validate()) {
                            authCubit.resetPasswordLink();
                          }
                        },
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
