import 'package:dalel_project/core/constants/app_colors.dart';
import 'package:dalel_project/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  const CustomTextField({super.key, required this.labelText});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 24.0),
      child: TextField(
        decoration: InputDecoration(
          border: _getBorder(),
          focusedBorder: _getBorder(),
          filled: true,
          fillColor: Colors.white,
          labelText: widget.labelText,
          labelStyle: AppTextStyle.poppins500Size18,
        ),
      ),
    );
  }

  OutlineInputBorder _getBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: BorderSide(color: AppColors.lightgray),
    );
  }
}
