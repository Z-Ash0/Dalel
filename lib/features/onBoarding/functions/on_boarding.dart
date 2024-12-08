import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:dalel_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:dalel_app/features/onBoarding/presentation/views/on_boarding_view.dart';

void saveVisited() =>
    getIt<CacheHelper>().saveData(key: 'OnBoardingVisited', value: true);

String visitedChecker() {
  return (getIt<CacheHelper>().getData(key: 'OnBoardingVisited') ?? false)
      ? SignUpView.path
      : OnBoardingView.path;
}
