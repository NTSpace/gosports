import 'package:flutter/cupertino.dart';
import 'package:gosports/models/pertandingan.dart';
import 'package:gosports/services/pertandingan_service.dart';

class PertandinganProvider with ChangeNotifier {
  List<PertandinganModel> _pertandingan = [];
  List<PertandinganModel> get pertandingan => _pertandingan;
  set pertandingan(List<PertandinganModel> pertandingan) {
    if (this.pertandingan == pertandingan) return;
    _pertandingan = pertandingan;
    notifyListeners();
  }

  // Future<void> homePertandingan() async {
  //   try {
  //     List pertandingan =
  //         await PertandinganService.pertandinganJadwal();
  //     _pertandingan = pertandingan;
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  void getPertandingan() async {
    try {
      final pertandingan = await PertandinganService.pertandinganJadwal();
      this.pertandingan = pertandingan;
      print(pertandingan.first.judul);
    } catch (e) {
      return;
    }
  }
}
