import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_toro/app/modules/introduction/components/introduction_slider/introduction_slider_item.dart';

class IntroductionItem extends StatelessWidget {
  final IntroductionSliderItem introduction;

  IntroductionItem({this.introduction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          this.introduction.introductionImagePosition ==
                  IntroductionImagePosition.top
              ? Center(
                  child: SvgPicture.asset(
                    this.introduction.imageAssetPath,
                    height: 300,
                    width: 300,
                  ),
                )
              : Container(),
          Text(
            this.introduction.title,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'DINPro',
            ),
            textAlign: TextAlign.center,
          ),
          this.introduction.introductionImagePosition ==
                  IntroductionImagePosition.center
              ? SvgPicture.asset(
                  this.introduction.imageAssetPath,
                )
              : Container(),
          this.introduction.details,
          this.introduction.introductionImagePosition ==
                  IntroductionImagePosition.bottom
              ? SvgPicture.asset(
                  this.introduction.imageAssetPath,
                )
              : Container(),
        ],
      ),
    );
  }
}
