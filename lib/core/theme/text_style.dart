import 'package:dalel_project/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static final  pacifico400 = TextStyle(
    fontSize: 64,
    fontFamily: 'Pacifico',
    fontWeight: FontWeight.w400,
    color: AppColors.deebBrown
  );
    static final  poppins500 = TextStyle(
    fontSize: 24,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    color: AppColors.textColor
  );
    static final  poppins300 = TextStyle(
    fontSize: 16,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w300,
    color: AppColors.textColor
  );
    static final  buttonTextStyle = TextStyle(
    fontSize: 18,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    color: Colors.white
  );
  
}
