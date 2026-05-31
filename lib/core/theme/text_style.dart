import 'package:dalel_project/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static const String fontFamily = 'Pacifico';
  static final  pacifico400 = TextStyle(
    fontSize: 64,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    color: AppColors.deebBrown
  );
}
