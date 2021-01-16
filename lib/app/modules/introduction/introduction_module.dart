import 'introduction_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'introduction_page.dart';

class IntroductionModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => IntroductionController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          '/introduction',
          child: (_, args) => IntroductionPage(),
          transition: TransitionType.downToUp,
          duration: Duration(milliseconds: 1200),
        ),
      ];

  static Inject get to => Inject<IntroductionModule>.of();
}
