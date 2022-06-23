import 'dart:convert';

import 'package:gosports/models/pertandingan.dart';
import 'package:http/http.dart' as http;

// String baseUrl = 'https://t-basket-service.gosports.id/';

class PertandinganService {
  static Future<List<PertandinganModel>> pertandinganJadwal() async {
    Uri url = Uri.parse(
        'http://t-basket-service.gosports.id/home-pertandingan?turnamen_id=6');

    var response = await http.get(url);
    var jsonObject = jsonDecode(response.body);
    List<dynamic> listPertandinganJadwal =
        (jsonObject as Map<String, dynamic>)['pertandinganHasil']['data'];
    return listPertandinganJadwal
        .map((e) => PertandinganModel.createPertandingan(e))
        .toList();
  }
}
