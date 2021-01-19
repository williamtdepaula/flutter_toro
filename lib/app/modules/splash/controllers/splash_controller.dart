import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashController {
  Future<Widget> onFinishAnimation() async {
    await Future.delayed(Duration(seconds: 1));
    return (await Modular.navigator
        .pushNamedAndRemoveUntil('/introduction', (_) => false)) as Widget;
  }
}
