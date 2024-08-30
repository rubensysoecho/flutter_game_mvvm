import 'package:flutter/cupertino.dart';
import 'package:flutter_game_mvvm/src/presentation/utils/validation_item.dart';

import 'login_state.dart';

class LoginViewModel extends ChangeNotifier {
  LoginState _state = LoginState();

  LoginState get state => _state;

  void changeEmail(String value) {
    _state = _state.copyWith(email: ValidationItem(value: value));
    notifyListeners();
  }

  void changePassword(String value) {
    _state = _state.copyWith(password: ValidationItem(value: value));
    notifyListeners();
  }

  void login()  {
    print('Email: ${_state.email.value}, Password: ${_state.password.value}');
  }
}