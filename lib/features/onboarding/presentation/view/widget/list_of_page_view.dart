import 'package:introduction_screen/introduction_screen.dart';
import 'package:phone_zone/core/utils/assets_manager.dart';
import 'package:phone_zone/core/utils/text_manager.dart';
import 'package:phone_zone/features/onboarding/presentation/view/widget/build_one_page_view.dart';

List<PageViewModel> pageViewModel = [
  buildPageView(
    imageTitle: AssetsManager.onboadingImage1,
    title: TextManager.onboardingTitle1,
    subTitle: TextManager.onboardingDesc1,
  ),
  buildPageView(
    imageTitle: AssetsManager.onboadingImage2,
    title: TextManager.onboardingTitle2,
    subTitle: TextManager.onboardingDesc2,
  ),
  buildPageView(
    imageTitle: AssetsManager.onboadingImage3,
    title: TextManager.onboardingTitle3,
    subTitle: TextManager.onboardingDesc3,
  ),
];
