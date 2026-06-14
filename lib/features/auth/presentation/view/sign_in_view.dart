
import 'package:dalel_project/core/constants/app_strings.dart';
import 'package:dalel_project/core/functions/navigation.dart';

import 'package:dalel_project/features/auth/presentation/widgets/custom_sign_in_form.dart';
import 'package:dalel_project/features/auth/presentation/widgets/have_an_account_widget.dart';

import 'package:dalel_project/features/auth/presentation/widgets/welcome_banner_widget.dart';
import 'package:dalel_project/features/auth/presentation/widgets/custom_welcome_widget.dart';
import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: WelcomeBanner()),
          SliverToBoxAdapter(child: SizedBox(height: 32)),
          SliverToBoxAdapter(child: WelcomeWidget(text: 'Welcome Back !')),
          SliverToBoxAdapter(child: SizedBox(height: 48)),
          SliverToBoxAdapter(child: CustomSignInForm()),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: HaveAnAccount(
              text1: AppStrings.dontHaveAnAccount,
              text2: AppStrings.signUp,
              onTap: () => customReplacementNavigate(context, '/signUp'),
            ),
          ),
        ],
      ),
    );
  }
}
