class Tim {
  int id;
  String nama;
  String? cabor;
  String? logo;

  Tim({
    required this.id,
    required this.nama,
    this.cabor,
    this.logo,
  });

  factory Tim.fromJson(Map<String, dynamic> json) {
    return Tim(
      id: json['id'],
      nama: json['nama'],
      cabor: json['cabor'],
      logo: json['logo'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama': nama,
      'cabor': cabor,
      'logo': logo,
    };
  }
}
