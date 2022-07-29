import 'package:flutter/material.dart';

class OnboardingScreenContent extends StatelessWidget {
  const OnboardingScreenContent(
      {Key? key,
      required this.headText,
      required this.bodyText,
      required this.image})
      : super(key: key);
  final String headText;
  final String bodyText;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: double.infinity,
          height: 500,
        ),
        Text(
          headText,
          style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
        const SizedBox(
          height: 35,
        ),
        Text(
          bodyText,
          style: const TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        
      ],
    );
  }
}

class OnboardData {
  final String image, headText, bodyText;
  OnboardData(
      {required this.image, required this.headText, required this.bodyText});
}

final List<OnboardData> data = [
  OnboardData(
      image: "assets/images/workingOnLaptop.jpg",
      headText: "Get new knowledge",
      bodyText:
          "“Emotion without reason lets people walk all over you; reason without emotion is a mask for cruelty” "),
  OnboardData(
      image: "assets/images/holdingGreenPlant.jpg",
      headText: "Take your time",
      bodyText:
          "“Emotion without reason lets people walk all over you; reason without emotion is a mask for cruelty” "),
  OnboardData(
      image: "assets/images/hair.jpg",
      headText: "Do what you love",
      bodyText:
          "“Emotion without reason lets people walk all over you; reason without emotion is a mask for cruelty” "),
  OnboardData(
      image: "assets/images/hair.jpg",
      headText: "Try something new",
      bodyText:
          "“Emotion without reason lets people walk all over you; reason without emotion is a mask for cruelty” "),
];