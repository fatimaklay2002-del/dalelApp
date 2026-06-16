import 'package:dalel_project/core/constants/app_assets.dart';
import 'package:dalel_project/core/constants/app_strings.dart';
import 'package:dalel_project/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel_project/features/auth/presentation/widgets/custom_welcome_widget.dart';
import 'package:dalel_project/features/auth/presentation/widgets/cuustom_forgot_password_form.dart';
import 'package:dalel_project/features/auth/presentation/widgets/forgot_password_sup_title.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 108)),
          const SliverToBoxAdapter(
            child: WelcomeWidget(text: AppStrings.forgotPasswordPage),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(
            child: Image.asset(
              Assets.assetsImagesForgetPassword,
              height: 235,
              width: 235,
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
          const SliverToBoxAdapter(child: ForgotPasswordSupTitle()),
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
          const SliverToBoxAdapter(child: CustomForgotPasswordForm()),
        ],
      ),
    );
  }
}
