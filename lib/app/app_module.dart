import 'package:flutter_toro/app/modules/introduction/introduction_module.dart';
import 'package:flutter_toro/app/modules/login/login_module.dart';
import 'package:flutter_toro/app/modules/splash/splash_module.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toro/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          module: SplashModule(),
        ),
        ModularRouter(
          '/introduction',
          module: IntroductionModule(),
        ),
        ModularRouter(
          '/login',
          module: LoginModule(),
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
