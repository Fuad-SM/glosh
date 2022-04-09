import 'dart:convert';

AuthBody authBodyFromJson(String str) => AuthBody.fromJson(json.decode(str));

String authBodyToJson(AuthBody data) => json.encode(data.toJson());

class AuthBody {
  AuthBody({
    required this.email,
    required this.password,
  });

  final String? email;
  final String? password;

  factory AuthBody.fromJson(Map<String, dynamic> json) => AuthBody(
        email: json["email"] == null ? null : json["email"],
        password: json["password"] == null ? null : json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email == null ? null : email,
        "password": password == null ? null : password,
      };
}
