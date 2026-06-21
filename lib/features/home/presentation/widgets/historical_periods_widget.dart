import 'package:dalel_project/core/constants/app_assets.dart';
import 'package:dalel_project/core/widgets/custom_options_widget.dart';
import 'package:flutter/material.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomOptionsWidgets(
          text: 'Ancient Egypt',
          image: AssetImage(Assets.ancientEgypImage),
        ),
        CustomOptionsWidgets(
          text: 'Islamic Era',
          image: AssetImage(Assets.islamicEraImage),
        ),
      ],
    );
  }
}
//CustomOptionsWidgets