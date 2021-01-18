import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_toro/app/modules/introduction/view/components/introduction_slider/introduction_checked_detail.dart';
import 'package:flutter_toro/app/modules/introduction/view/components/introduction_slider/introduction_item.dart';
import 'package:flutter_toro/app/modules/introduction/view/components/introduction_slider/introduction_slider.dart';
import 'package:flutter_toro/app/modules/introduction/view/components/introduction_slider/introduction_text_span.dart';
import 'package:flutter_toro/app/shared/components/button/default_button.dart';
import 'package:flutter_toro/app/shared/constants.dart';
import '../controller/introduction_controller.dart';

class IntroductionPage extends StatefulWidget {
  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState
    extends ModularState<IntroductionPage, IntroductionController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _handlerRenderBody(),
    );
  }

  Widget _handlerRenderBody() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            _handlerRenderSlider(),
            _handlerRenderButtons(),
          ],
        ),
      ),
    );
  }

  Widget _handlerRenderSlider() {
    return IntroductionSlider(
      key: Key('introduction_slider'),
      introductions: [
        IntroductionItem(
          key: Key('step_one_introduction_slider'),
          title:
              'Olá!\nAgora você tem o jeito\nmais fácil de investir na\nBolsa.',
          imageAssetPath: '$ASSETS_IMGS_STEPS_PATH/step1.svg',
        ),
        IntroductionItem(
          key: Key('step_two_introduction_slider'),
          title: 'Corretagem Zero',
          details: IntroductionTextSpan(
            textSpans: [
              TextSpan(text: 'Aproveite para investir com '),
              TextSpan(
                text: 'Corretagem Zero em qualquer tipo de ativo ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(text: 'inclusive da Bolsa.'),
            ],
          ),
          imageAssetPath: '$ASSETS_IMGS_STEPS_PATH/step2.svg',
          introductionImagePosition: IntroductionImagePosition.top,
        ),
        IntroductionItem(
          key: Key('step_three_introduction_slider'),
          title: 'Cashback em Fundos de Investimento',
          imageAssetPath: '$ASSETS_IMGS_STEPS_PATH/step3.svg',
          introductionImagePosition: IntroductionImagePosition.top,
          details: IntroductionTextSpan(
            textSpans: [
              TextSpan(text: 'Receba parte da taxa de\nadministração, '),
              TextSpan(
                text: 'em dinheiro na\nsua conta Toro.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        IntroductionItem(
          title: 'E tem muito mais!',
          key: Key('step_four_introduction_slider'),
          imageAssetPath: '$ASSETS_IMGS_STEPS_PATH/step4.svg',
          introductionImagePosition: IntroductionImagePosition.top,
          details: IntroductionCheckedDetail(
            details: [
              'Recomendações de investimentos.',
              'Cursos do iniciante ao avançado.',
              'Invista sabendo quanto pode ganhar'
            ],
          ),
        ),
      ],
    );
  }

  Widget _handlerRenderButtons() {
    return Column(
      children: [
        DefaultButton(
          key: Key('open_account_button_introduction'),
          text: 'Abra sua conta grátis',
          outlined: false,
          onPressed: () => {},
        ),
        DefaultButton(
          key: Key('enter_button_introduction'),
          text: 'Entrar',
          outlined: true,
          onPressed: controller.openLoginPage,
        ),
      ],
    );
  }
}
