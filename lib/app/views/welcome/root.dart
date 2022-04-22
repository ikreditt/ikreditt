import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:ikreditt/app/config/constats.dart';
import 'package:ikreditt/app/models/onboarding_model.dart';
import 'package:ikreditt/app/views/root/root.dart';

class WelcomeRoot extends StatelessWidget {
  WelcomeRoot({Key? key}) : super(key: key);

  final List<OnboardingModel> pages = [
    OnboardingModel(
        icon: Icons.format_size,
        image: onboardingone,
        title: "Do you need urgent\ncash ?",
        textColor: Colors.black,
        bgColor: Colors.white),
    OnboardingModel(
      icon: Icons.hdr_weak,
      image: onboardingtwo,
      title: "Loan Application\nanalyzed fast\n and easy",
      textColor: Colors.white,
      bgColor: Colors.black,
    ),
    OnboardingModel(
      icon: Icons.bubble_chart,
      image: onboardingthree,
      title: "Get your loan within minutes",
      textColor: Colors.black,
      bgColor: Colors.white,
    ),
  ];

  List<Color> get colors => pages.map((p) => p.bgColor).toList();
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ConcentricPageView(
        colors: colors,
        onFinish: () => onPageFinished(context),
        itemCount: colors.length,
        radius: 30,
        curve: Curves.ease,
        duration: const Duration(seconds: 2),
        itemBuilder: (int index, double value) {
          OnboardingModel page = pages[index];
          return PageCard(page: page);
        },
      ),
    );
  }

  void onPageFinished(BuildContext context) {
    Navigator.push(
      context,
      ConcentricPageRoute(
        maintainState: false,
        builder: (context) => const IkreditRoot(),
      ),
    );
  }
}

class PageCard extends StatelessWidget {
  final OnboardingModel page;

  const PageCard({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height * 0.1),
        Image.asset(page.image, height: size.height * .4),
        const SizedBox(height: 30),
        Text(
          page.title!,
          style: Theme.of(context)
              .textTheme
              .headline2
              ?.copyWith(color: page.textColor),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
