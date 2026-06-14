import 'package:dalel_project/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  final String text;
  const WelcomeWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        text,
        style: AppTextStyle.poppins600
      ),
    );
  }
}