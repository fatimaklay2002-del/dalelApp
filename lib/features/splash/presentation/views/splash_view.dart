import 'package:dalel_project/core/constants/app_strings.dart';
import 'package:dalel_project/core/database/cache/cache_helper.dart';
import 'package:dalel_project/core/di/injection.dart';
import 'package:dalel_project/core/functions/navigation.dart';
import 'package:dalel_project/core/theme/text_style.dart';
import 'package:dalel_project/features/on_boarding/presentation/views/on_boarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  initState() {
    bool isOnBoardingVisited =
        getIt.get<CacheHelper>().getData(key: "isOnBoardingVisited") ?? false;
    if (isOnBoardingVisited == true) {
      FirebaseAuth.instance.currentUser == null
          ? delayNavigate(context, "/signUp")
          : delayNavigate(context, "/home");
    } else {
      delayNavigate(context, "/onboarding");
    }

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

void delayNavigate(context, path) {
  Future.delayed(const Duration(seconds: 3), () {
    customReplacementNavigate(context, path);
  });
}
