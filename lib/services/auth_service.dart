import 'dart:convert';

import 'package:gosports/models/user_login.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'https://auth-service.gosports.id/auth';

  Future<UsersLogin> register({
    required String email,
    required String password,
    required String konfirmasiPassword,
  }) async {
    var url = Uri.parse('$baseUrl/register');
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
      'konfirmasi_password': konfirmasiPassword,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      data.token = 'bearer ' + data['token'];
      return data.token;
    } else {
      throw Exception('Gagal registrasi');
    }
  }

  Future<UsersLogin> login({
    required String email,
    required String password,
  }) async {
    var url = Uri.parse('$baseUrl/login');
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      data.token = 'bearer ' + data['token'];
      return data.token;
    } else {
      throw Exception('Gagal Login');
    }
  }
}
