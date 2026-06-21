import 'package:dalel_project/core/constants/app_assets.dart';
import 'package:dalel_project/core/widgets/custom_category_widget.dart';
import 'package:flutter/material.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return CustomCategoryWidgets(
            text: 'Lionheart',
            image: AssetImage(Assets.ancientEgypImage),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 20);
        },
        itemCount: 6,
      ),
    );
  }
}
