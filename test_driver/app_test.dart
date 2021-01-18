import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  final enterButtonIntroduction = find.byValueKey('enter_button_introduction');
  final openAccountButtonIntroduction =
      find.byValueKey('open_account_button_introduction');
  final introductionSlider = find.byValueKey('introduction_slider');
  final logoLogin = find.byValueKey('logo_login');
  final loginInput = find.byValueKey('login_input');
  final passwordInput = find.byValueKey('password_input');
  final stepOneIntroductionSlider =
      find.byValueKey('step_one_introduction_slider');
  final stepTwoIntroductionSlider =
      find.byValueKey('step_two_introduction_slider');
  final stepThreeIntroductionSlider =
      find.byValueKey('step_three_introduction_slider');
  final stepFourIntroductionSlider =
      find.byValueKey('step_four_introduction_slider');

  FlutterDriver driver;
  group('Toro app', () {
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    //Checa se um determinado Widget está na tela, a partir da key
    Future<bool> isPresent(SerializableFinder byValueKey,
        {Duration timeout = const Duration(seconds: 1)}) async {
      try {
        await driver.waitFor(byValueKey, timeout: timeout);
        return true;
      } catch (e) {
        return false;
      }
    }

    test(
        'Should show enter button to login and open account button on introduction page',
        () async {
      await driver.waitFor(enterButtonIntroduction);
      await driver.waitFor(openAccountButtonIntroduction);
    });

    test('Should show slider on introduction page', () async {
      await driver.waitFor(introductionSlider);
    });

    test('Should scroll slider to second step', () async {
      Future<void> scrollSlider(SerializableFinder finder) async {
        await driver.scroll(
          introductionSlider,
          -500,
          0,
          Duration(milliseconds: 500),
        );
      }

      if (await isPresent(introductionSlider) &&
          await isPresent(stepOneIntroductionSlider)) {
        //Passamos o slide para a segunda etapa
        await scrollSlider(introductionSlider);
        await driver.waitFor(stepTwoIntroductionSlider);

        //Passamos o slide para a terceira etapa
        await scrollSlider(introductionSlider);
        await driver.waitFor(stepThreeIntroductionSlider);

        //Passamos o slide para a quarta etapa
        await scrollSlider(introductionSlider);
        await driver.waitFor(stepFourIntroductionSlider);
      }
    });

    test('Should open login page when press enter button', () async {
      if (await isPresent(enterButtonIntroduction)) {
        await driver.tap(enterButtonIntroduction);

        await driver.waitFor(logoLogin);
      }
    });

    test('Should write login and password in the text fields', () async {
      if (await isPresent(logoLogin)) {
        const String emailToLogin = 'email@email.com';
        const String passwordToLogin = '123456';

        //Coloca o e-mail no campo de texto para e-mail ou cpf
        await driver.tap(loginInput);

        await driver.enterText(emailToLogin);

        //Coloca a senha no campo de texto para senha
        await driver.tap(passwordInput);

        await driver.enterText(passwordToLogin);

        //Verificamos se os textos foram inseridos
        await driver.waitFor(find.text(emailToLogin));
        await driver.waitFor(find.text(passwordToLogin));
      }
    });
  });
}
