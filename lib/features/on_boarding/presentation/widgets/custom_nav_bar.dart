import 'package:dalel_project/core/constants/app_strings.dart';
import 'package:dalel_project/core/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CustomNavBar extends StatelessWidget {
  final VoidCallback? onTap;
  const CustomNavBar({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Align(
        alignment: Alignment.topRight,
        child: Text(
          AppStrings.skip,
          style: AppTextStyle.poppins300.copyWith(color: Colors.brown),
        ),
      ),
    );
  }
}
