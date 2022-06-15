import 'package:flutter/cupertino.dart';
import 'package:gosports/models/user_login.dart';
import 'package:gosports/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  late UsersLogin _user;

  UsersLogin get user => _user;

  // ignore: non_constant_identifier_names
  set User(UsersLogin user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    required String nama,
    required String email,
    required String password,
    required String konfirmasiPassword,
    required String cabor,
  }) async {
    try {
      UsersLogin user = await AuthService().register(
        nama: nama,
        email: email,
        password: password,
        konfirmasiPassword: konfirmasiPassword,
        cabor: cabor,
      );
      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
