import 'package:flutter/material.dart';
import 'package:flutter_toro/app/modules/introduction/view/components/introduction_slider/indicators.dart';
import 'package:flutter_toro/app/modules/introduction/view/components/introduction_slider/introduction_item.dart';
import 'package:flutter_toro/app/modules/introduction/view/components/introduction_slider/introduction_slider_item.dart';

class IntroductionSlider extends StatefulWidget {
  final List<IntroductionSliderItem> introductions;

  IntroductionSlider({
    this.introductions,
  });

  @override
  _IntroductionSliderState createState() => _IntroductionSliderState();
}

class _IntroductionSliderState extends State<IntroductionSlider> {
  int indexFocus = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: widget.introductions.length,
                itemBuilder: (BuildContext context, int i) {
                  return IntroductionItem(
                    introduction: this.widget.introductions[i],
                  );
                },
                onPageChanged: (int index) =>
                    setState(() => this.indexFocus = index),
              ),
            ),
            Indicators(
              total: this.widget.introductions.length,
              indexFocus: this.indexFocus,
              size: 10,
            )
          ],
        ),
      ),
    );
  }
}
