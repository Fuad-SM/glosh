import 'dart:convert';

UserPost userPostFromJson(String str) => UserPost.fromJson(json.decode(str));

UserModel userFromJson(String str) => UserModel.fromJson(json.decode(str));
String userToJson(UserModel data) => json.encode(data.toJson());

// Post user menggunakanan parameter content type application json
class UserPost {
  UserPost({
    required this.address,
    required this.email,
    required this.fullName,
    required this.password,
    required this.phoneNumber,
    required this.username,
    required this.verifyPassword,
  });

  final String address;
  final String email;
  final String fullName;
  final String password;
  final String phoneNumber;
  final String username;
  final String verifyPassword;

  factory UserPost.fromJson(Map<String, dynamic> json) => UserPost(
        address: json["address"] == null ? null : json["address"],
        email: json["email"] == null ? null : json["email"],
        fullName: json["fullName"] == null ? null : json["fullName"],
        password: json["password"] == null ? null : json["password"],
        phoneNumber: json["phoneNumber"] == null ? null : json["phoneNumber"],
        username: json["username"] == null ? null : json["username"],
        verifyPassword:
            json["verifyPassword"] == null ? null : json["verifyPassword"],
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "email": email,
        "fullName": fullName,
        "password": password,
        "phoneNumber": phoneNumber,
        "username": username,
        "verifyPassword": verifyPassword,
      };
}

class UserModel {
  UserModel({
    required this.address,
    required this.createdBy,
    required this.createdTime,
    required this.email,
    required this.fullName,
    required this.id,
    required this.phoneNumber,
    required this.updatedBy,
    required this.updatedTime,
    required this.username,
  });

  final String address;
  final String createdBy;
  final String createdTime;
  final String email;
  final String fullName;
  final int id;
  final String phoneNumber;
  final String updatedBy;
  final String updatedTime;
  final String username;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        address: json["address"] == null ? null : json["address"],
        createdBy: json["createdBy"] == null ? null : json["createdBy"],
        createdTime: json["createdTime"] == null ? null : json["createdTime"],
        email: json["email"] == null ? null : json["email"],
        fullName: json["fullName"] == null ? null : json["fullName"],
        id: json["id"] == null ? null : json["id"],
        phoneNumber: json["phoneNumber"] == null ? null : json["phoneNumber"],
        updatedBy: json["updatedBy"] == null ? null : json["updatedBy"],
        updatedTime: json["updatedTime"] == null ? null : json["updatedTime"],
        username: json["username"] == null ? null : json["username"],
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "createdBy": createdBy,
        "createdTime": createdTime,
        "email": email,
        "fullName": fullName,
        "id": id,
        "phoneNumber": phoneNumber,
        "updatedBy": updatedBy,
        "updatedTime": updatedTime,
        "username": username,
      };
}
