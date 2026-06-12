import 'package:dalel_project/core/constants/app_colors.dart';
import 'package:dalel_project/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class HaveAnAccount extends StatelessWidget {
  final String text1;
  final String text2;
  final VoidCallback? onTap;
  const HaveAnAccount({super.key, required this.text1, required this.text2, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: Alignment.center,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: text1, style: AppTextStyle.poppins400Size12),
              TextSpan(
                text: text2,
                style: AppTextStyle.poppins400Size12.copyWith(
                  color: AppColors.lightgray,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
