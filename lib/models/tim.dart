import 'package:gosports/models/pemain.dart';

class TimModel {
  int id;
  String nama;
  String? cabor;
  String logo;
  List<PemainModel>? pemain;

  TimModel({
    required this.id,
    required this.nama,
    this.cabor,
    required this.logo,
    this.pemain,
  });

  factory TimModel.fromJson(Map<String, dynamic> json) {
    return TimModel(
      id: json['id'],
      nama: json['nama'],
      cabor: json['cabor'],
      logo: json['logo'],
      pemain: (json['pemains'] as List)
          .map((e) => PemainModel.fromJson(e))
          .toList(),
    );
  }
}
