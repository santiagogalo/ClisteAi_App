import 'dart:convert';
import 'dart:developer';

import 'package:clisteai/domain/entities/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserModelPrefs {
  // Método para guardar el UserModel en Shared Preferences
  static Future<void> saveUserModel(UserModel userModel) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('user_data', jsonEncode(userModel.toJson()));
  }

  // Método estático para cargar UserModel desde Shared Preferences
  static Future<UserModel?> loadUserModel() async {
    final prefs = await SharedPreferences.getInstance();
    final userData = prefs.getString('user_data');
    log("$userData");
    if (userData != null) {
      final Map<String, dynamic> userMap = jsonDecode(userData);
      return UserModel.fromJson(userMap);
    }
    return null;
  }
}
