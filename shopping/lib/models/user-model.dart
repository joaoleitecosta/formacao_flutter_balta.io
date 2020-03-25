class UserModel {
  int id;
  String nome;
  String email;
  String image;
  String username;
  Null password;
  String role;
  String token;

  UserModel(
      {this.id,
      this.nome,
      this.email,
      this.image,
      this.username,
      this.password,
      this.role,
      this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.nome = json["nome"];
    this.email = json["email"];
    this.image = json["image"];
    this.username = json["username"];
    this.password = json["password"];
    this.role = json["role"];
    this.token = json["token"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data["id"] = this.id;
    data["nome"] = this.nome;
    data["email"] = this.email;
    data["image"] = this.image;
    data["username"] = this.username;
    data["password"] = this.password;
    data["role"] = this.role;
    data["token"] = this.token;

    return data;
  }
}
