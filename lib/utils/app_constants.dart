import 'package:cleaningapp/config/assets/image_assets.dart';
import 'package:cleaningapp/model/onboarding.dart';

class AppConstants {
  static List<OnBoarding> pageViewList = [
    OnBoarding(
      title: 'Sparkling Clean Homes, Happy Living with CleanSpace.',
      image: ImageAssets.onboard1,
    ),
    OnBoarding(
      title: 'Expert Cleaning Solutions for a Healthier Home with CleanSpace',
      image: ImageAssets.onboard2,
    ),
    OnBoarding(
      title: 'Convenience at Your Doorstep: Book Your Cleaning Now',
      image: ImageAssets.onboard3,
    ),
  ];
}
