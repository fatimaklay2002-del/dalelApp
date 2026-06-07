import 'package:dalel_project/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  final String teext;
  const WelcomeWidget({super.key, required this.teext});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        teext,
        style: AppTextStyle.poppins600
      ),
    );
  }
}