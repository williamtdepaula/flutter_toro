import 'package:flutter/material.dart';
import 'package:flutter_toro/app/shared/constants.dart';

class IntroductionCheckedDetail extends StatelessWidget {
  final List<String> details;

  IntroductionCheckedDetail({this.details});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _handlerRenderCheckedListDetail(),
    );
  }

  List<Widget> _handlerRenderCheckedListDetail() {
    List<Widget> detailsList = [];

    for (int i = 0; i < details.length; i++) {
      detailsList.add(
        Row(
          children: [
            Icon(
              Icons.check,
              color: kColorThemeApp,
            ),
            Text(
              this.details[i],
              style: TextStyle(
                fontFamily: 'DINPro',
                fontSize: 20,
              ),
            ),
          ],
        ),
      );
    }

    return detailsList;
  }
}
