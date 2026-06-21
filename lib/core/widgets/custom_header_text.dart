import 'package:dalel_project/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class CustomHeaderText extends StatelessWidget {
  final String text;
  const CustomHeaderText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyle.poppins400Size20,
    );
  }
}
