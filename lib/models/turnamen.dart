class TurnamenModel {
  int id;
  String judul;
  String? deskripsi;
  String tanggalMulai;
  String tanggalAkhir;
  String? foto;

  TurnamenModel({
    required this.id,
    required this.judul,
    this.deskripsi,
    required this.tanggalMulai,
    required this.tanggalAkhir,
    this.foto,
  });

  factory TurnamenModel.fromJson(Map<String, dynamic> json) {
    return TurnamenModel(
      id: json['id'],
      judul: json['judul'],
      deskripsi: json['deskripsi'],
      tanggalMulai: json['tanggal_mulai'],
      tanggalAkhir: json['tanggal_akhir'],
      foto: json['foto'],
    );
  }
}
