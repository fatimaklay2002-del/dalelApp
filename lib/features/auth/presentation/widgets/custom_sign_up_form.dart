import 'package:dalel_project/core/constants/app_colors.dart';
import 'package:dalel_project/core/constants/app_strings.dart';
import 'package:dalel_project/core/functions/navigation.dart';
import 'package:dalel_project/core/functions/show_toast.dart';
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
        if(state is SignUpSuccessState) {
      showToastMassege("Sign Up Successfully");
      customReplacementNavigate(context, "/home");
        } else if(state is SignUpFailureState) {
          showToastMassege(state.errorMessage);
        }  
        
        
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
                suffixIcon: IconButton(
                  icon: Icon(
                    authCubit.isObscurePasswordText == true
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    authCubit.obscurePasswordTextValue(
                      !(authCubit.isObscurePasswordText ?? true),
                    );
                  },
                ),
                obscureText: authCubit.isObscurePasswordText,
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              TermsandConditionWidget(),
              SizedBox(height: 40),
              state is SignUpLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  :
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
