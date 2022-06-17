class GameModel {
  int id;
  String? judul;
  int? pertandinganId;
  String status;
  DateTime? waktuMulai;
  DateTime? waktuSelesai;
  String? lamaGame;

  GameModel({
    required this.id,
    this.judul,
    this.pertandinganId,
    this.waktuMulai,
    this.waktuSelesai,
    required this.status,
    this.lamaGame,
  });

  factory GameModel.fromJson(Map<String, dynamic> json) {
    return GameModel(
      id: json['id'],
      judul: json['judul'],
      pertandinganId: json['pertandingan_id'],
      status: json['status'],
      waktuMulai: DateTime.parse(json['waktu_mulai']),
      waktuSelesai: DateTime.parse(json['waktu_selesai']),
      lamaGame: json['lama_game'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'judul': judul,
      'status': status,
      'pertandingan_id': pertandinganId,
      'waktu_mulai': waktuMulai.toString(),
      'waktu_selesai': waktuSelesai.toString(),
      'lama_game': lamaGame,
    };
  }
}
