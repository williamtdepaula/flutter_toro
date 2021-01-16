import 'package:flutter/material.dart';
import 'package:flutter_toro/app/shared/constants.dart';

class Indicators extends StatelessWidget {
  final int total;
  final double size;
  final int indexFocus;

  Indicators({this.total = 0, this.size = 20, this.indexFocus = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: _handlerRenderIndicator(),
    );
  }

  List<Widget> _handlerRenderIndicator() {
    List<Widget> indicators = [];

    for (var i = 0; i < total; i++) {
      indicators.add(Container(
        width: this.size,
        height: this.size,
        margin: EdgeInsets.only(
          right: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(this.size / 2),
          ),
          color: this.indexFocus == i ? kColorThemeApp : Colors.grey[350],
        ),
      ));
    }

    return indicators;
  }
}
