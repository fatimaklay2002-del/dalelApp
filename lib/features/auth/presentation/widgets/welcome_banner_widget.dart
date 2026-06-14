import 'package:dalel_project/core/constants/app_assets.dart';
import 'package:dalel_project/core/constants/app_colors.dart';
import 'package:dalel_project/core/constants/app_strings.dart';
import 'package:dalel_project/core/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class WelcomeBanner extends StatelessWidget {
  const WelcomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,      
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
                Text(AppStrings.appName,style:AppTextStyle.saira700Size32,),
                SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  SvgPicture.asset(Assets.assetsImagesVector1,),
                  SvgPicture.asset(Assets.assetsImagesVector2,),
                  ],
                )
                
                
          ],
        )
    );
  }
}