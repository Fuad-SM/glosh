import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.user,
  });

  final UserClass? user;

  factory User.fromJson(Map<String, dynamic> json) => User(
        user: json["user"] == null ? null : UserClass.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user == null ? null : user?.toJson(),
      };
}

class UserClass {
  UserClass({
    required this.id,
    required this.role,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.apiToken,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.metadata,
  });

  final String? id;
  final String? role;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? apiToken;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final dynamic metadata;

  factory UserClass.fromJson(Map<String, dynamic> json) => UserClass(
        id: json["id"] == null ? null : json["id"],
        role: json["role"] == null ? null : json["role"],
        email: json["email"] == null ? null : json["email"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        apiToken: json["api_token"] == null ? null : json["api_token"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        metadata: json["metadata"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "role": role == null ? null : role,
        "email": email == null ? null : email,
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "api_token": apiToken == null ? null : apiToken,
        "created_at": createdAt == null
            ? "2021-03-16T21:24:29.411Z"
            : createdAt?.toIso8601String(),
        "updated_at": updatedAt == null
            ? "2021-03-16T21:24:29.411Z"
            : updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
      };
}
