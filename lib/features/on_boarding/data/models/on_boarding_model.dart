import 'package:dalel_project/core/constants/app_assets.dart';

class OnBoardingModel {
final  String image;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    image:Assets.assetsImagesOnboarding1,
    title: 'Explore The history with Dalel in a smart way',
    subTitle: 'Discover the wonders of history with Dalel, your ultimate guide to the past.',
  ),
  OnBoardingModel(
    image:Assets.assetsImagesOnboarding2,
    title: 'From every placeon earth',
    subTitle: 'A big variety of ancient places from all over the world.',
  ),
  OnBoardingModel(
    image:Assets.assetsImagesOnboarging3,
    title: 'Using modern AI technology for better user experience',
    subTitle: 'AI provide recommendations and helps you to continue the search journey.',
  ),
];