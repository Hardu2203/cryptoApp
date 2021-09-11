import 'package:flutter/material.dart';

import '../prefs.dart';

class Auth with ChangeNotifier {
  String? _token;

  bool get isAuth {
    return token != null;
  }

  String? get token {
    return _token;
  }

  Future<bool> _authenticate(String email, String password) async {
    //do auth stuff
    return true;
  }

  Future<void> login(String email, String password) async {
    var authenticated = await _authenticate(email, password);

    if (authenticated) {
      Prefs.setUserToken(email);
      _token = email;
      notifyListeners();
    }
  }

  Future<bool> tryAutoLogin() async {

    final token = await Prefs.getUserToken();

    if (token == null) {
      _token = null;
      return false;
    }

    _token = token;
    notifyListeners();
    return true;
  }

  Future<void> logout() async {
    _token = null;
    Prefs.clearUserToken();
    notifyListeners();
  }

}
