import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static setUserToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
  }

  static clearUserToken() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
  }

  static Future<String?> getUserToken() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('token')) {
      //No user Data
      return null;
    }
    return prefs.getString('token')!;
  }
}
