import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:sk_onboarding_screen/flutter_onboarding.dart';

class OnboardContent {
  String image;
  String title;
  String description;

  OnboardContent({this.image, this.title, this.description});
}

List<OnboardContent> content = [
  OnboardContent(
    title: 'Easy and Fast',
    image: 'assets/image.png',
    description:
        'Easy  order, fast  delivery of your packages from just one app.',
  ),
  OnboardContent(
    title: 'Track your package',
    image: 'assets/image2.png',
    description:
        'Know the location of your package and estimated time of arrival to preferred destinations.',
  ),
  OnboardContent(
    title: 'Up your game',
    image: 'assets/image1.png',
    description:
        'Take your business to the next level with access to vast number of logistics riders',
  ),
];

final List<OnBoardModel> OnboardData = [
  OnBoardModel(
    title: 'Easy and Fast',
    description:
        'Easy  order, fast  delivery of your packages from just one app.',
    imgUrl: 'assets/image.png',
  ),
  OnBoardModel(
    title: 'Track your package',
    description:
        'Know the location of your package and estimated time of arrival to preferred destinations.',
    imgUrl: 'assets/image2.png',
  ),
  OnBoardModel(
    title: 'Set your own goals and get better',
    description:
        'Take your business to the next level with access to vast number of logistics riders',
    imgUrl: 'assets/image1.png',
  ),
];

final Onboardsk = [
  SkOnboardingModel(
    title: 'Easy and Fast',
    titleColor: Colors.black,
    descripColor: Color(0xFF929794),
    description:
        'Easy  order, fast  delivery of your packages from just one app.',
    imagePath: 'assets/image.png',
  ),
  SkOnboardingModel(
    title: 'Track your package',
    titleColor: Colors.black,
    descripColor: Color(0xFF929794),
    description:
        'Know the location of your package and estimated time of arrival to preferred destinations.',
    imagePath: 'assets/image2.png',
  ),
  SkOnboardingModel(
    titleColor: Colors.black,
    descripColor: Color(0xFF929794),
    title: 'Set your own goals and get better',
    description:
        'Take your business to the next level with access to vast number of logistics riders',
    imagePath: 'assets/image1.png',
  ),
];

// final pages = [
//   SkOnboardingModel(
//       title: 'Choose your item',
//       description:
//           'Easily find your grocery items and you will get delivery in wide range',
//       titleColor: Colors.black,
//       descripColor: const Color(0xFF929794),
//       imagePath: 'assets/onboarding1.png'),
//   SkOnboardingModel(
//       title: 'Pick Up or Delivery',
//       description:
//           'We make ordering fast, simple and free-no matter if you order online or cash',
//       titleColor: Colors.black,
//       descripColor: const Color(0xFF929794),
//       imagePath: 'assets/onboarding2.png'),
//   SkOnboardingModel(
//       title: 'Pay quick and easy',
//       description: 'Pay for order using credit or debit card',
//       titleColor: Colors.black,
//       descripColor: const Color(0xFF929794),
//       imagePath: 'assets/onboarding3.png'),
// ];
