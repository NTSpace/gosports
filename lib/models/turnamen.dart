class Turnamen {
  int id;
  String judul;
  String? deskripsi;
  DateTime tanggalMulai;
  DateTime tanggalAkhir;
  String? foto;

  Turnamen({
    required this.id,
    required this.judul,
    this.deskripsi,
    required this.tanggalMulai,
    required this.tanggalAkhir,
    this.foto,
  });

  factory Turnamen.fromJson(Map<String, dynamic> json) {
    return Turnamen(
      id: json['id'],
      judul: json['judul'],
      deskripsi: json['deskripsi'],
      tanggalMulai: json['tanggal_mulai'],
      tanggalAkhir: json['tanggal_akhir'],
      foto: json['foto'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'judul': judul,
      'deskripsi': deskripsi,
      'foto': foto,
    };
  }
}
