import 'package:dalel_project/core/constants/app_colors.dart';
import 'package:dalel_project/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckBoxWidgets extends StatefulWidget {
  const CheckBoxWidgets({super.key});

  @override
  State<CheckBoxWidgets> createState() => _CheckBoxWidgetsState();
}

class _CheckBoxWidgetsState extends State<CheckBoxWidgets> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      value: value,
      onChanged: (newValue) {
        setState(() {
          value = newValue!;
          BlocProvider.of<AuthCubit>(context).updateTermsAndConditionCheckBox(value: value);
        });
      },
      side: BorderSide(color: AppColors.lightgray),
    );
  }
}
