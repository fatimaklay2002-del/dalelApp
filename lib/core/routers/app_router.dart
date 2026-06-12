import 'package:dalel_project/core/di/injection.dart';
import 'package:dalel_project/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_project/features/auth/presentation/view/sign_in_view.dart';
import 'package:dalel_project/features/auth/presentation/view/sign_up_view.dart';
import 'package:dalel_project/features/home/presentation/views/home_viwe.dart';
import 'package:dalel_project/features/on_boarding/presentation/views/on_boarding.dart';
import 'package:dalel_project/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: ('/'), builder: (context, state) => const SplashView()),
    GoRoute(
      path: ('/onboarding'),
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: ('/signUp'),
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignUpView(),
      ),
    ),
    GoRoute(path: ('/signIn'), builder: (context, state) => BlocProvider(
      create: (context) => AuthCubit(),
      child: const SignInView(),
    )),
    GoRoute(path: ('/home'), builder: (context, state) => const HomeView()),
  ],
);
