import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/features/onBoarding/presentation/widgets/custom_smooth_indicator.dart';
import 'package:flutter/widgets.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      child: PageView.builder(
        controller: pageController,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Column(
          children: [
            //* Wrapping the image with a container with fixed size is more efficient
            Container(
              width: 500,
              height: 460,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Assets.assetsImagesOnBoarding1))),
            ),
            const SizedBox(height: 32),
            CustomSmoothIndicator(
              pageController: pageController,
              index: 3,
            ),
            const SizedBox(height: 64),
            const Text(
              'Explore The history with \nDalel in a smart way',
              style: AppTextStyles.poppinsW700Size28,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              'Using our app’s history libraries \nyou can find many historical periods',
              style: AppTextStyles.poppinsW500Size24
                  .copyWith(fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        itemCount: 3,
      ),
    );
  }
}
