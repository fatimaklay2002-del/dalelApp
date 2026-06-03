import 'package:dalel_project/core/theme/text_style.dart';
import 'package:dalel_project/features/on_boarding/presentation/widgets/custom_smooth_page_indicator_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  final ImageProvider image;
  final String title;
  final String subTitle;

  const OnBoardingBody({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController();
    return SizedBox(
      height:500,
      child: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
      controller: _pageController,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Image(image: image),
            SizedBox(height: 20,),
        CustomSmoothPageIndicatorWidget(pageController: _pageController),
             SizedBox(height: 20,),
            
            Text(title,style: AppTextStyle.poppins500.copyWith(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              SizedBox(height: 16,),
            Text(subTitle,style: AppTextStyle.poppins300,textAlign: TextAlign.center,)
          ],
        );
      },
      
    ));
  }
}
