import 'package:dalel_project/core/constants/app_strings.dart';
import 'package:dalel_project/core/functions/navigation.dart';
import 'package:dalel_project/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  initState() {
    delayNavigate(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppStrings.appName, style: AppTextStyle.pacifico400),
      ),
    );
  }
}

void delayNavigate(context) {
  Future.delayed(const Duration(seconds: 3), () {
    customNavigate(context, '/onboarding');
  });
}
