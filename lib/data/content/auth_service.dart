// ignore_for_file: unused_field, non_constant_identifier_names, avoid_print
import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthService {
  static String mainUrl = 'http://192.168.1.7:8000/api';
  static String registerUrl = '/register';
  static String loginUrl = '/login';
  static String logoutUrl = "";

  static const _headerKey = 'auth_key';
  static const _firstNameKey = 'first_name';
  static const _lastNameKey = 'last_name';
  static const _emailKey = 'email';
  static const _passwordKey = 'password';
  static const _authorizationKey = 'Authorization';

  // Accept header value
  static const _acceptValue = 'application/json';

  // Bearer word for authorization header
  static const _bearer = 'Bearer ';

  Future<dynamic> registerUser(
    String first_name,
    String last_name,
    String email,
    String password,
  ) async {
    if (first_name.isEmpty ||
        last_name.isEmpty ||
        email.isEmpty ||
        password.isEmpty) {
      return null;
    }

    http.Response response;
    try {
      response = await http.post(
        Uri.parse(mainUrl + registerUrl),
        body: {
          _firstNameKey: first_name,
          _lastNameKey: last_name,
          _emailKey: email,
          _passwordKey: password,
        },
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body)['access_token'];
      } else if (response.statusCode == 422) {
        return print("Some fields are required or incorrect");
      }
    } catch (ex) {
      return null;
    }
  }

  Future<dynamic> loginUser(String email, String password) async {
    // validate email & password
    if (email.isEmpty || password.isEmpty) {
      return null;
    }

    http.Response response;
    try {
      // pass data in request body of post request method
      response = await http.post(
        Uri.parse(mainUrl + loginUrl),
        headers: {
          //   _headerKey: ,
          'Accpet': _acceptValue,
        },
        body: {
          _emailKey: email,
          _passwordKey: password,
        },
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body)['access_token'];
      } else if (response.statusCode == 422) {
        return print("Some fields are required or incorrect");
      }
    } catch (ex) {
      return null;
    }
    return null;
  }

  Future logoutUser(String token) async {
    if (token.isEmpty) {
      return null;
    }

    http.Response response;
    try {
      response = await http.post(
        Uri.parse(mainUrl + logoutUrl),
        headers: {
          _authorizationKey: _bearer + token,
        },
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body)['message'];
      }
    } catch (ex) {
      return null;
    }
    return null;
  }
}
