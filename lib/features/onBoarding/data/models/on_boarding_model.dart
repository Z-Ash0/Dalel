import 'package:dalel_app/core/utils/app_assets.dart';

class OnBoardingModel {
  final String image, text, describtion;

  const OnBoardingModel(
      {required this.image, required this.text, required this.describtion});
}

const List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    image: Assets.assetsImagesOnBoarding1,
    text: 'Explore The history with\nDalel in a smart way',
    describtion:
        'Using our app’s history libraries\nyou can find many historical periods ',
  ),
  OnBoardingModel(
      image: Assets.assetsImagesOnBoarding2,
      text: 'From every place\non earth',
      describtion: 'A big variety of ancient places\nfrom all over the world'),
  OnBoardingModel(
    image: Assets.assetsImagesOnBoarding3,
    text: 'Using modern AI technology\nfor better user experience',
    describtion:
        'AI provide recommendations and helps\nyou to continue the search journey',
  ),
];
