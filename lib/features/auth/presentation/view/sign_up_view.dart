import 'package:dalel_project/core/constants/app_strings.dart';
import 'package:dalel_project/features/auth/presentation/widgets/custom_sign_up_form.dart';

import 'package:dalel_project/features/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:dalel_project/features/search/custom_welcome_widget.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(height: 108), // Add some spacing at the top
            ),
            const SliverToBoxAdapter(
              child: WelcomeWidget(teext: AppStrings.welcome),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
          
            const SliverToBoxAdapter(
              child: CustomSignUpForm(),
            ),
            SliverToBoxAdapter(child: const SizedBox(height: 16)),
            const SliverToBoxAdapter(
              child: HaveAnAccount(
                text1: AppStrings.alreadyHaveAnAccount,
                text2: AppStrings.signIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
