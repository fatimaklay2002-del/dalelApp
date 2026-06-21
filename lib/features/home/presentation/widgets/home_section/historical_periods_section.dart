import 'package:dalel_project/core/constants/app_strings.dart';
import 'package:dalel_project/core/widgets/custom_header_text.dart';
import 'package:dalel_project/features/home/presentation/widgets/historical_periods_widget.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodsSection extends StatelessWidget {
  const HistoricalPeriodsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomHeaderText(text: AppStrings.historicalPeriods),
        SizedBox(height: 16),

        HistoricalPeriods(),
        SizedBox(height: 32),
      ],
    );
  }
}