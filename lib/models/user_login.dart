class UsersLogin {
  UsersLogin({
    required this.id,
    required this.nama,
    required this.email,
    required this.cabor,
    required this.token,
    // required this.createdAt,
    // required this.updatedAt,
    // this.sosialMedia,
    // required this.umur,
    // required this.kebangsaan,
    // required this.deskripsi,
  });

  int id;
  String? nama;
  String email;
  String cabor;
  String? token;
  // DateTime createdAt;
  // DateTime updatedAt;
  // dynamic sosialMedia;
  // int umur;
  // String kebangsaan;
  // String deskripsi;

  factory UsersLogin.fromJson(Map<String, dynamic> json) {
    return UsersLogin(
      id: json["id"],
      nama: json["nama"],
      email: json["email"],
      cabor: json["cabor"],
      token: json["token"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "nama": nama,
      "email": email,
      "cabor": cabor,
      "token": token,
    };
    // "created_at": createdAt.toIso8601String(),
    // "updated_at": updatedAt.toIso8601String(),
    // "sosial_media": sosialMedia,
    // "umur": umur,
    // "kebangsaan": kebangsaan,
    // "deskripsi": deskripsi,
  }
}
