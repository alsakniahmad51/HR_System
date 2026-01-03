class AuthModel {
  final String email;

  AuthModel({required this.email});

  Map<String, dynamic> toJson() {
    return {'email': email};
  }

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(email: json['email']);
  }
}
