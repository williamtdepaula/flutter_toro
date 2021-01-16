import 'package:flutter_modular/flutter_modular.dart';

class IntroductionController {
  void openLoginPage() async {
    await Modular.navigator.pushNamedAndRemoveUntil('/login', (_) => false);
  }
}
