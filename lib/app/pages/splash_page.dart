import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_toro/app/shared/constants.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen.withScreenFunction(
      splash: Image.asset(
        '$ASSETS_IMGS_PATH/logo-icon.png',
      ),
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: Duration(seconds: 1),
      screenFunction: () async {
        await Future.delayed(Duration(seconds: 1));
        return (await Modular.navigator
            .pushNamedAndRemoveUntil('/introduction', (_) => false)) as Widget;
      },
    );
  }
}
