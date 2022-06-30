import 'dart:convert';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:http/http.dart' as http;

class AuthenticationApi {
  UserInfo? userInfo;

  Future<String> requestLoginUrl() {
    return http
        .get(Uri.parse('http://192.168.1.17:8000/login'))
        .then((response) => response.body);
  }

  /// Gets user information for the given sessionId. If valid, `true` is
  /// returned and `userInfo` is set. If invalid, `false` is returned.
  Future<bool> setSessionId(String sessionId) async {
    var meResponse = await http
        .get(Uri.parse('http://192.168.1.17:8000/me?session=$sessionId'));

    if (meResponse.statusCode != 200) {
      return false;
    }

    userInfo = UserInfo.fromJson(jsonDecode(meResponse.body));
    return true;
  }

  void logOut() {
    userInfo = null;
  }
}
