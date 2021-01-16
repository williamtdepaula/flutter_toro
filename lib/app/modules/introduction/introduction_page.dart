import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_toro/app/modules/introduction/components/introduction_slider/introduction_slider_item.dart';
import 'package:flutter_toro/app/modules/introduction/components/introduction_slider/introduction_checked_detail.dart';
import 'package:flutter_toro/app/modules/introduction/components/introduction_slider/introduction_slider.dart';
import 'package:flutter_toro/app/modules/introduction/components/introduction_slider/introduction_text_span.dart';
import 'package:flutter_toro/app/shared/components/button/default_button.dart';
import 'introduction_controller.dart';

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          _handlerRenderSlider(),
          _handlerRenderButtons(),
        ],
      ),
    );
  }

  Widget _handlerRenderSlider() {
    return IntroductionSlider(
      introductions: [
        IntroductionSliderItem(
          title:
              'Olá!\nAgora você tem o jeito\nmais fácil de investir na\nBolsa.',
          imageAssetPath: 'assets/imgs/steps/step1.svg',
        ),
        IntroductionSliderItem(
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
          imageAssetPath: 'assets/imgs/steps/step2.svg',
          introductionImagePosition: IntroductionImagePosition.top,
        ),
        IntroductionSliderItem(
          title: 'Cashback em Fundos de Investimento',
          imageAssetPath: 'assets/imgs/steps/step3.svg',
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
        IntroductionSliderItem(
          title: 'E tem muito mais!',
          imageAssetPath: 'assets/imgs/steps/step4.svg',
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
          text: 'Abra sua conta grátis',
          outlined: false,
          onPressed: () => {},
        ),
        DefaultButton(
          text: 'Entrar',
          outlined: true,
          onPressed: controller.openLoginPage,
        ),
      ],
    );
  }
}
