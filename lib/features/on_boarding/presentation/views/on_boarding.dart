import 'package:dalel_project/core/constants/app_assets.dart';
import 'package:dalel_project/core/widgets/custom_button.dart';
import 'package:dalel_project/features/on_boarding/presentation/widgets/custom_nav_bar.dart';
import 'package:dalel_project/features/on_boarding/presentation/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
            CustomNavBar(),
                 SizedBox(height: 20,),
                OnBoardingBody(image: AssetImage(Assets.assetsImagesOnboarding1), title: 'Explore The history with Dalel in a smart way', subTitle: 'Discover the wonders of history with Dalel, your ultimate guide to the past.'),
                CustomButton(text: 'Next', onPressed: (){})
              
            
        ]  ),
        )
      ),
    );

  }
}