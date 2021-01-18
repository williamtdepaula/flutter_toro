import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum IntroductionImagePosition {
  top,
  center,
  bottom,
}

class IntroductionItem extends StatelessWidget {
  final String title;
  final Widget details;
  final String imageAssetPath;
  final IntroductionImagePosition introductionImagePosition;

  IntroductionItem({
    Key key,
    this.title,
    this.details,
    this.imageAssetPath,
    this.introductionImagePosition = IntroductionImagePosition.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          this.introductionImagePosition == IntroductionImagePosition.top
              ? Center(
                  child: SvgPicture.asset(
                    this.imageAssetPath,
                    height: 300,
                    width: 300,
                  ),
                )
              : Container(),
          Text(
            this.title,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'DINPro',
            ),
            textAlign: TextAlign.center,
          ),
          this.introductionImagePosition == IntroductionImagePosition.center
              ? SvgPicture.asset(
                  this.imageAssetPath,
                )
              : Container(),
          this.details != null ? this.details : Container(),
          this.introductionImagePosition == IntroductionImagePosition.bottom
              ? SvgPicture.asset(
                  this.imageAssetPath,
                )
              : Container(),
        ],
      ),
    );
  }
}
