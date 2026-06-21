import 'package:dalel_project/core/constants/app_strings.dart';
import 'package:dalel_project/core/widgets/custom_header_text.dart'
    show CustomHeaderText;
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_category_list_view.dart';

class HistoricalSouvenirsSection extends StatelessWidget {
  const HistoricalSouvenirsSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomHeaderText(text: AppStrings.historicalSouvenirs),
        SizedBox(height: 16),
        CustomCategoryListView(),
      ],
    );
  }
}
