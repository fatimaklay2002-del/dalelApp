import 'package:dalel_project/core/constants/app_colors.dart';
import 'package:dalel_project/core/constants/app_strings.dart';
import 'package:dalel_project/core/di/injection.dart';
import 'package:dalel_project/core/widgets/custom_button.dart';
import 'package:dalel_project/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_project/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:dalel_project/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel_project/features/auth/presentation/widgets/terms_and_condition_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signUpKey,
          child: Column(
            children: [
              CustomTextFormField(
                labelText: AppStrings.fristName,
                onChanged: (firstName) {
                  authCubit.firstName = firstName;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.lastName,
                onChanged: (lastName) {
                  authCubit.lastName = lastName;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.emailAddress,
                onChanged: (email) {
                  authCubit.email = email;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.password,
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              TermsandConditionWidget(),
              SizedBox(height: 40),
              CustomButton(
                color: authCubit.isTermsAndConditionCheckBoxValue == true ? null : AppColors.lightgray,
                text: AppStrings.signUp,
                onPressed: () {
                  if(authCubit.isTermsAndConditionCheckBoxValue == true) {
                    if (authCubit.signUpKey.currentState!.validate()) {
                      authCubit.signUpWithEmailAndPassword();
                    }
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
