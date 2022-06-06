class User {
  final String imagePath;
  final String nama;
  final String email;
  final String nomor;

  const User({
    required this.imagePath,
    required this.nama,
    required this.email,
    required this.nomor,
  });

  User copy({
    String? imagePath,
    String? nama,
    String? email,
    String? nomor,
  }) =>
      User(
        imagePath: imagePath ?? this.imagePath,
        nama: nama ?? this.nama,
        email: email ?? this.email,
        nomor: nomor ?? this.nomor,
      );

  static User fromJson(Map<String, dynamic> json) => User(
        imagePath: json['imagePath'],
        nama: json['nama'],
        email: json['email'],
        nomor: json['nomor'],
      );

  Map<String, dynamic> toJson() => {
        'imagePath': imagePath,
        'nama': nama,
        'email': email,
        'nomor': nomor,
      };
}
