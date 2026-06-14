import 'package:dalel_project/core/constants/app_strings.dart';
import 'package:dalel_project/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class ForgetPasswordTextWidget extends StatelessWidget {
  const ForgetPasswordTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
        AppStrings.forgotPassword,
          style: AppTextStyle.poppins600.copyWith(
            fontSize: 12,
            color: Color(0xFF6F6460),
          ),
        ),
      ),
    );
  }
}