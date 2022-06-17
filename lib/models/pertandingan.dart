import 'package:gosports/models/babak.dart';
import 'package:gosports/models/game.dart';
import 'package:gosports/models/pesertas.dart';
import 'package:gosports/models/turnamen.dart';

class PertandinganModel {
  int id;
  String? judul;
  String? lokasi;
  DateTime? tanggalMulai;
  String? livestream;
  String status;
  List<PesertasModel> pesertas;
  Turnamen? turnamen;
  Babak? babak;
  GameModel? games;

  PertandinganModel({
    required this.id,
    this.judul,
    this.lokasi,
    this.tanggalMulai,
    this.livestream,
    required this.status,
    required this.pesertas,
    this.turnamen,
    this.babak,
    this.games,
  });

  factory PertandinganModel.fromJson(Map<String, dynamic> json) {
    return PertandinganModel(
      id: json['id'],
      judul: json['judul'],
      lokasi: json['lokasi'],
      tanggalMulai: DateTime.parse(json['tanggal_mulai']),
      livestream: json['livestream'],
      status: json['status'],
      pesertas: json['pesertas']
          .map<PesertasModel>((peserta) => PesertasModel.fromJson(peserta))
          .toList(),
      turnamen: Turnamen.fromJson(json['turnamen']),
      babak: Babak.fromJson(json['babak']),
      games: GameModel.fromJson(json['games']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'judul': judul,
      'lokasi': lokasi,
      'tanggalMulai': tanggalMulai,
      'livestream': livestream,
      'status': status,
      'pesertas': pesertas.map((peserta) => peserta.toJson()).toList(),
      'turnamen': turnamen?.toJson(),
      'babak': babak?.toJson(),
      'games': games?.toJson(),
    };
  }
}
