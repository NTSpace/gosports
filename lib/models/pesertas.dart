import 'package:gosports/models/tim.dart';

class PesertasModel {
  int id;
  int menang;
  int poin;
  String links;

  PesertasModel({
    required this.id,
    required this.menang,
    required this.poin,
    required this.links,
  });

  factory PesertasModel.fromJson(Map<String, dynamic> json) {
    return PesertasModel(
      id: json['id'],
      menang: json['menang'],
      poin: json['poin'],
      links: json['links']['tim'],
    );
  }
}