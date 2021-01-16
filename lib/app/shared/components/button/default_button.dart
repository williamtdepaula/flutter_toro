import 'package:flutter/material.dart';
import 'package:flutter_toro/app/shared/constants.dart';

class DefaultButton extends StatelessWidget {
  final bool outlined;
  final String text;
  final Function onPressed;
  final bool enabled;

  DefaultButton({
    @required this.text,
    @required this.onPressed,
    this.outlined = false,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      margin: EdgeInsets.only(top: 10),
      child: RaisedButton(
        elevation: 0,
        onPressed: enabled ? this.onPressed : null,
        padding: EdgeInsets.all(15),
        disabledColor: outlined ? Colors.white : Colors.grey,
        child: Text(
          this.text,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'DINPro',
            color: outlined
                ? enabled
                    ? kColorThemeApp
                    : Colors.grey
                : Colors.white,
          ),
        ),
        color: outlined ? Colors.white : kColorThemeApp,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: enabled ? kColorThemeApp : Colors.grey),
        ),
      ),
    );
  }
}
