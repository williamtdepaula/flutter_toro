import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_toro/app/modules/login/controllers/login_controller.dart';
import 'package:flutter_toro/app/modules/login/view/components/input_login.dart';
import 'package:flutter_toro/app/shared/components/button/default_button.dart';
import 'package:flutter_toro/app/shared/constants.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: _handlerRenderBody(),
    );
  }

  Widget _handlerRenderBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                '$ASSETS_IMGS_PATH/logo-transparent.png',
                height: 30,
              ),
              _handlerRenderTitle(),
              _handlerRenderForm(),
              _handlerRenderButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _handlerRenderTitle() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: 'Toro',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          children: [
            TextSpan(text: 'O jeito mais fácil de\n'),
            TextSpan(
              text: 'investir ',
              style: TextStyle(
                color: kColorThemeApp,
              ),
            ),
            TextSpan(text: 'na Bolsa.'),
          ],
        ),
      ),
    );
  }

  Widget _handlerRenderForm() {
    return Form(
      child: Column(
        children: [
          InputLogin(
            title: 'E-mail ou CPF:',
          ),
          InputLogin(
            title: 'Senha:',
            isPassword: true,
          ),
        ],
      ),
    );
  }

  Widget _handlerRenderButtons() {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            DefaultButton(
              text: 'ENTRAR',
              onPressed: this.controller.login,
            ),
            DefaultButton(
              text: 'ABRA SUA CONTA',
              onPressed: this.controller.login,
              outlined: true,
            ),
          ],
        ),
      ),
    );
  }
}
