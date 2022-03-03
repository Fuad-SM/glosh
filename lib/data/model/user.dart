import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
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

  factory User.fromJson(Map<String, dynamic> json) => User(
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
