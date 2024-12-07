import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/features/onBoarding/presentation/models/on_boarding_model.dart';
import 'package:dalel_app/features/onBoarding/presentation/widgets/custom_smooth_indicator.dart';
import 'package:flutter/widgets.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody(
      {super.key, required this.pageController, required this.onPageChanged});
  final PageController pageController;
  final List<OnBoardingModel> list = onBoardingList;
  final ValueChanged<int> onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        controller: pageController,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Column(
          children: [
            //* Wrapping the image with a container with fixed size is more efficient
            Container(
              width: 500,
              height: 460,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(list[index].image))),
            ),
            const SizedBox(height: 32),
            CustomSmoothIndicator(
              pageController: pageController,
              index: list.length,
            ),
            const SizedBox(height: 64),
            Text(
              list[index].text,
              style: AppTextStyles.poppinsW700Size28,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              list[index].describtion,
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
