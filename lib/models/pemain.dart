class PemainModel {
  int? id;
  String? nomorPunggung;
  String? nama;
  String? cabor;

  PemainModel({this.id, this.nama, this.nomorPunggung});

  factory PemainModel.fromJson(Map<String, dynamic> json) {
    return PemainModel(
      id: json['id'],
      nama: json['nickname'],
      nomorPunggung: json['nomor_punggung'],
    );
  }
}
