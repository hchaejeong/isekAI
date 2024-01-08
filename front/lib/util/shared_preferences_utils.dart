import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil {
  static const String keyUserId = 'KEY_USER_ID';

  static Future<String?> getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (keyUserId.isEmpty) {
      return null;
    } else {
      return prefs.getString(keyUserId);
    }
  }

  static Future<void> setUserId(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(keyUserId, id);
  }

  static Future<void> removeUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(keyUserId);
  }
}
