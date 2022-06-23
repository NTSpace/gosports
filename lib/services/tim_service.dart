import 'dart:convert';

import 'package:gosports/models/tim.dart';
import 'package:http/http.dart' as http;

class TimService {
  static String baseUrl = 'https://tim-service.gosports.id';

  static Future<TimModel> getTim({int? timId, String? links}) async {
    var url = timId != null ? '$baseUrl/$timId' : links!;
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return TimModel.fromJson(data);
    }
    throw {
      Exception('Gagal Get Pertandingan'),
    };
  }
}
