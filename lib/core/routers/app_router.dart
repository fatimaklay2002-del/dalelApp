import 'package:dalel_project/features/auth/presentation/view/sign_in_view.dart';
import 'package:dalel_project/features/auth/presentation/view/sign_up_view.dart';
import 'package:dalel_project/features/on_boarding/presentation/views/on_boarding.dart';
import 'package:dalel_project/features/splash/presentation/views/splash_view.dart';
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
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: ('/signIn'),
      builder: (context, state) => const SignInView(),
    ),
  ],
);
