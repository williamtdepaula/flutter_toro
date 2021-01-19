import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_toro/app/modules/splash/controllers/splash_controller.dart';
import 'package:flutter_toro/app/modules/splash/view/splash_page.dart';

class SplashModule extends ChildModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
        Bind((i) => SplashController()),
      ];

  @override
  // TODO: implement routers
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => SplashPage(),
        ),
      ];
}
