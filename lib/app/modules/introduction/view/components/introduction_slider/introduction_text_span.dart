import 'package:flutter/material.dart';

class IntroductionTextSpan extends StatelessWidget {
  final List<TextSpan> textSpans;

  IntroductionTextSpan({@required this.textSpans});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'DINPro',
        ),
        children: this.textSpans,
      ),
    );
  }
}
