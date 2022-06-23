import 'dart:convert';
import 'package:gosports/models/pesertas.dart';
import 'package:gosports/models/turnamen.dart';
import 'package:http/http.dart' as http;

class PertandinganModel {
  String? id;
  String? judul;
  String? lokasi;
  String? urutan;
  DateTime tanggalMulai;
  String? livestream;
  String? status;
  List<PesertasModel> pesertas;
  TurnamenModel? turnamen;

  PertandinganModel({
    this.id,
    this.judul,
    this.lokasi,
    this.urutan,
    required this.tanggalMulai,
    this.livestream,
    this.status,
    required this.pesertas,
    this.turnamen,
  });

  factory PertandinganModel.createPertandingan(Map<String, dynamic> json) {
    return PertandinganModel(
      id: json['id'].toString(),
      judul: json['judul'],
      lokasi: json['lokasi'],
      urutan: json['urutan'].toString(),
      tanggalMulai: json['tanggal_mulai'] != null
          ? DateTime.parse(json['tanggal_mulai'])
          : DateTime.now(),
      livestream: json['livestream'],
      status: json['status'],
      pesertas: json['pesertas'] != null
          ? (json['pesertas'] as List)
              .map((peserta) => PesertasModel.fromJson(peserta))
              .toList()
          : [],
      turnamen: json['turnamen'] != null
          ? TurnamenModel.fromJson(json['turnamen'])
          : null,
    );
  }
}
