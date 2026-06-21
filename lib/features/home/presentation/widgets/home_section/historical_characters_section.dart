import 'package:dalel_project/core/constants/app_strings.dart';
import 'package:dalel_project/core/widgets/custom_category_list_view.dart';
import 'package:dalel_project/core/widgets/custom_header_text.dart';
import 'package:flutter/material.dart';

class HistoricalCharactersSection extends StatelessWidget {
  const HistoricalCharactersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomHeaderText(text: AppStrings.historicalCharacters),
        SizedBox(height: 16),
        CustomCategoryListView(),
        SizedBox(height: 32),
      ],
    );
  }
}