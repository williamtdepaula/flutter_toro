import 'package:flutter/material.dart';

enum IntroductionImagePosition {
  top,
  center,
  bottom,
}

class IntroductionSliderItem {
  String title;
  Widget details;
  String imageAssetPath;
  IntroductionImagePosition introductionImagePosition;

  IntroductionSliderItem({
    this.title = '',
    this.details = const Text(''),
    this.imageAssetPath = '',
    this.introductionImagePosition = IntroductionImagePosition.center,
  });
}
