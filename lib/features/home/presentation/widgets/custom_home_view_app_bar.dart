import 'package:dalel_project/core/constants/app_assets.dart';
import 'package:dalel_project/core/constants/app_strings.dart';
import 'package:dalel_project/core/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(Assets.assetsMenuIcon),
        Text(AppStrings.appName, style: AppTextStyle.pacifico400.copyWith(fontSize: 22))],
    );
  }
}
