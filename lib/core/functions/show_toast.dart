import 'package:dalel_project/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToastMassege(String massege) {
  Fluttertoast.showToast(
    msg: massege,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: AppColors.primaryColor,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}