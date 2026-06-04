import 'package:dalel_project/core/constants/app_colors.dart';
import 'package:dalel_project/core/constants/app_strings.dart';
import 'package:dalel_project/core/functions/navigation.dart';
import 'package:dalel_project/core/theme/text_style.dart';
import 'package:dalel_project/core/widgets/custom_button.dart';
import 'package:dalel_project/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';

class GetBoutton extends StatelessWidget {
  final int currentIndex;
  final PageController controller;
  const GetBoutton({
    super.key,
    required this.currentIndex,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomButton(
            text: AppStrings.createAccount,
            onPressed: () {
              //onBoardingVisited();
              customReplacementNavigate(context, "/signUp");
            },
          ),
          SizedBox(height: 16),
          TextButton(
            onPressed: () {
              customReplacementNavigate(context, "/signIn");
            },
            child: Text(
              AppStrings.signIn,
              style: AppTextStyle.poppins300.copyWith(
                fontSize: 16,
                color: AppColors.deebBrown,
              ),
            ),
          ),
        ],
      );
    } else {
      return CustomButton(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
      );
    }
  }
}
