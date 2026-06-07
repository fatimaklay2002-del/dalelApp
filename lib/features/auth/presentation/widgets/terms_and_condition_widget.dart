
import 'package:dalel_project/core/constants/app_strings.dart';
import 'package:dalel_project/core/theme/text_style.dart';
import 'package:dalel_project/features/auth/presentation/widgets/check_box_widget.dart';
import 'package:flutter/material.dart';

class TermsandConditionWidget extends StatelessWidget {
  const TermsandConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CheckBoxWidgets(),
        Text.rich(TextSpan(
          children: [
            TextSpan(
              text: AppStrings.iHaveAgreeToOur,
              style: AppTextStyle.poppins400Size12,
            ),
            TextSpan(
              text: AppStrings.termsAndCondition,
              style: AppTextStyle.poppins400Size12.copyWith(decoration: TextDecoration.underline),
            ),
          ],
        ))
      ],
    );
  }
}
