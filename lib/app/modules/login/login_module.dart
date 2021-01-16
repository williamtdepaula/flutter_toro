import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_toro/app/modules/login/controllers/login_controller.dart';
import 'package:flutter_toro/app/modules/login/view/login_page.dart';

class LoginModule extends ChildModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
        Bind((i) => LoginController()),
      ];

  @override
  // TODO: implement routers
  List<ModularRouter> get routers => [
        ModularRouter(
          '/login',
          child: (_, args) => LoginPage(),
        ),
      ];
}
