class Validator {
  static bool _validateCPF(String cpf) {
    if (cpf.length < 11) return false;
    return true;
  }

  static bool _validateEmail(String email) {
    RegExp regExp = new RegExp(
      r'/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/',
    );

    if (regExp.hasMatch(email)) return true;
    return false;
  }

  static bool validateLogin(String login) {
    if (login == null || login.isEmpty) return false;
    if (login.contains('@')) return Validator._validateEmail(login);
    if (num.tryParse(login) != null) return Validator._validateCPF(login);

    return true;
  }

  static bool validatePassword(String password) {
    if (password.length < 6) return false;
    return true;
  }
}
