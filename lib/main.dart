import 'package:dalel_project/core/constants/app_colors.dart';
import 'package:dalel_project/core/database/cache/cache_helper.dart';
import 'package:dalel_project/core/di/injection.dart';
import 'package:dalel_project/core/routers/app_router.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await getIt.get<CacheHelper>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backgroundColor),
    );
  }
}
