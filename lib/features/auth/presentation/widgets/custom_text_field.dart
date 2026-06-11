import 'package:dalel_project/core/constants/app_colors.dart';
import 'package:dalel_project/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String labelText;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
   final bool? obscureText;
  final Widget? suffixIcon;
  const CustomTextFormField({super.key, required this.labelText, this.onChanged, this.onSubmitted, this.suffixIcon, this.obscureText});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 24.0),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter ${widget.labelText.toLowerCase()}';
          }
          return null;
        },
          
        onChanged: widget.onChanged,
        onFieldSubmitted: widget.onSubmitted,
        obscureText: widget.obscureText ?? false,
        decoration: InputDecoration(
          border: _getBorder(),
          focusedBorder: _getBorder(),
          filled: true,
          fillColor: Colors.white,
          labelText: widget.labelText,
          labelStyle: AppTextStyle.poppins500Size18,
          suffixIcon: widget.suffixIcon,
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
