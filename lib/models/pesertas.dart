import 'package:gosports/models/tim.dart';

class PesertasModel {
  int id;
  int menang;
  int poin;
  int? timId;

  PesertasModel({
    required this.id,
    required this.menang,
    required this.poin,
    this.timId,
  });

  factory PesertasModel.fromJson(Map<String, dynamic> json) {
    return PesertasModel(
      id: json['id'],
      menang: json['menang'],
      poin: json['poin'],
      timId: json['tim_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'menang': menang,
      'poin': poin,
      'tim_id': timId,
    };
  }
}
