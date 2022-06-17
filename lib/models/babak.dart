class Babak {
  int id;
  String judul;
  int urutan;
  int? tim;

  Babak({
    required this.id,
    required this.judul,
    required this.urutan,
    this.tim,
  });

  factory Babak.fromJson(Map<String, dynamic> json) {
    return Babak(
      id: json['id'],
      judul: json['judul'],
      urutan: json['urutan'],
      tim: json['tim'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'judul': judul,
      'urutan': urutan,
      'tim': tim,
    };
  }
}
