

import 'package:dalel_project/core/functions/navigation.dart';
import 'package:dalel_project/features/on_boarding/presentation/views/functions/on_boarding.dart';
import 'package:dalel_project/features/on_boarding/presentation/widgets/custom_nav_bar.dart';
import 'package:dalel_project/features/on_boarding/presentation/widgets/get_button.dart';
import 'package:dalel_project/features/on_boarding/presentation/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 40),
              CustomNavBar(
                onTap: () {
                    onBoardingVisited();
                  customReplacementNavigate(context, "/signUp");
                },
              ),
              OnBoardingWidgetBody(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              const SizedBox(height: 88),
              GetBoutton(currentIndex: currentIndex, controller: _controller),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
