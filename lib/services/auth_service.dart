import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

String baseUrl = 'https://auth-service.gosports.id/auth';

class AuthService {
  static Future<http.Response> register(
    String nama,
    String email,
    String password,
    String konfirmasiPassword,
    String cabor,
  ) async {
    Map data = {
      "nama": nama,
      'email': email,
      'password': password,
      'konfirmasi_password': konfirmasiPassword,
      'cabor': cabor,
    };
    var body = json.encode(data);
    var url = Uri.parse('$baseUrl/register');
    http.Response response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: body,
    );
    print(response.body);
    return response;
  }

  static Future<http.Response> login(
    String email,
    String password,
  ) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    Map data = {
      'email': email,
      'password': password,
    };
    var body = json.encode(data);
    var url = Uri.parse('$baseUrl/login');
    http.Response response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: body,
    );
    print(response.body);
    return response;
  }
}
