import 'package:dalel_project/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class ForgotPasswordSupTitle extends StatelessWidget {
  const ForgotPasswordSupTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
        'Enter your registered email below to receive password reset instruction',
        style: AppTextStyle.poppins400Size12.copyWith(
          fontSize: 14,
          color: Color(0xff6F6460),
          
        ),
        textAlign: TextAlign.center,
      
    );
  }
}