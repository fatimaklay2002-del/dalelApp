import 'package:dalel_project/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static final pacifico400 = TextStyle(
    fontSize: 64,
    fontFamily: 'Pacifico',
    fontWeight: FontWeight.w400,
    color: AppColors.deepBrown,
  );
  static final poppins500 = TextStyle(
    fontSize: 24,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );
  static final poppins500Size16 = TextStyle(
    fontSize: 16,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    color: AppColors.deepBrown,
  );
  static final poppins500Size18 = TextStyle(
    fontSize: 18,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    color: AppColors.deepGray,
  );
  static final poppins300 = TextStyle(
    fontSize: 16,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w300,
    color: AppColors.textColor,
  );
  static final poppins600 = TextStyle(
    fontSize: 28,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    color: AppColors.textColor,
  );
  static final poppins400Size12 = TextStyle(
    fontSize: 12,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    color: AppColors.deepGray,
  );
  static final poppins400Size20 = TextStyle(
    fontSize: 20,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    color: AppColors.deepBrown,
  );
  static final saira700Size32 = TextStyle(
    fontSize: 42,
    fontFamily: 'Saira',
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static final buttonTextStyle = TextStyle(
    fontSize: 18,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
}
