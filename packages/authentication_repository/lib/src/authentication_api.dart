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

  Future<void> setSessionId(String sessionId) async {
    var meResponse = await http
        .get(Uri.parse('http://192.168.1.17:8000/me?session=$sessionId'));

    userInfo = UserInfo.fromJson(jsonDecode(meResponse.body));
  }

  void logOut() {
    userInfo = null;
  }
}
