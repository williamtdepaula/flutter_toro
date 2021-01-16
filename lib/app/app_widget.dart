import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_toro/app/shared/constants.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: Modular.initialRoute,
      onGenerateRoute: Modular.generateRoute,
      theme: ThemeData(
        primaryColor: kColorThemeApp,
      ),
    );
  }
}
