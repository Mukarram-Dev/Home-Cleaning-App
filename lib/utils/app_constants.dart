import 'package:cleaningapp/config/assets/image_assets.dart';
import 'package:cleaningapp/model/category.dart';
import 'package:cleaningapp/model/onboarding.dart';
import 'package:cleaningapp/model/service_model.dart';

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

  static List<Category> categoryList = [
    Category("All", true),
    Category("Cleaning", false),
    Category("Repairing", false),
    Category("Electrical", false),
    Category("Mechanical", false),
  ];
  static List<ServiceModel> serviceList = [
    ServiceModel(
      "Home Cleaning",
      ImageAssets.services1,
      "Marco Loppo",
      '35',
      4.0,
      'Cleaning',
    ),
    ServiceModel(
      "Handymen ",
      ImageAssets.services2,
      "Julie Iskander",
      '40',
      4.5,
      'Repairing',
    ),
    ServiceModel(
      "Plumbing",
      ImageAssets.services3,
      "Mark Larisso",
      '75',
      4.3,
      'Repairing',
    ),
    ServiceModel(
      "Car Cleaning",
      ImageAssets.services1,
      "Ben Barry",
      '29',
      4.8,
      'Cleaning',
    ),
  ];
}
