import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_toro/app/shared/utils/validator/validator.dart';

void main() {
  test('Should return false if CPF is incomplet', () {
    bool res = Validator.validateLogin('413608');

    expect(res, false);
  });

  test('Should return false if login is null', () {
    bool res = Validator.validateLogin(null);

    expect(res, false);
  });

  test('Should return false if password is lower that 6', () {
    bool res = Validator.validatePassword('12345');

    expect(res, false);
  });

  test('Should return false if password is 6 size', () {
    bool res = Validator.validatePassword('123456');

    expect(res, true);
  });
}
