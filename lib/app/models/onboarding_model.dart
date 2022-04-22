import 'package:flutter/material.dart';

///A model for the onboarding data to be used in the onboarding screen
class OnboardingModel {
  final String? title;
  final IconData? icon;
  final Color bgColor;
  final Color textColor;
  final String image;

  OnboardingModel({
    this.title,
    this.icon,
    this.bgColor = Colors.white,
    this.textColor = Colors.black,
    required this.image,
  });
}
