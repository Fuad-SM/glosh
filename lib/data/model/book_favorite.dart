import 'package:glosh/data/model/detail_book.dart';
import 'package:glosh/data/model/user.dart';
import 'dart:convert';

FavoriteBook favoriteBookFromJson(String str) =>
    FavoriteBook.fromJson(json.decode(str));

String favoriteBookToJson(FavoriteBook data) => json.encode(data.toJson());

class FavoriteBook {
  FavoriteBook({
    required this.createdBy,
    required this.createdTime,
    required this.details,
    required this.id,
    required this.updatedBy,
    required this.updatedTime,
    required this.userModel,
  });

  final String createdBy;
  final String createdTime;
  final List<DetailBook>? details;
  final int id;
  final String updatedBy;
  final String updatedTime;
  final UserModel? userModel;

  factory FavoriteBook.fromJson(Map<String, dynamic> json) => FavoriteBook(
        createdBy: json["createdBy"] == null ? null : json["createdBy"],
        createdTime: json["createdTime"] == null ? null : json["createdTime"],
        details: json["details"] == null
            ? null
            : List<DetailBook>.from(
                json["details"].map((x) => DetailBook.fromJson(x))),
        id: json["id"] == null ? null : json["id"],
        updatedBy: json["updatedBy"] == null ? null : json["updatedBy"],
        updatedTime: json["updatedTime"] == null ? null : json["updatedTime"],
        userModel: json["userModel"] == null
            ? null
            : UserModel.fromJson(json["userModel"]),
      );

  Map<String, dynamic> toJson() => {
        "createdBy": createdBy,
        "createdTime": createdTime,
        "details": List<dynamic>.from(details!.map((x) => x.toJson())),
        "id": id,
        "updatedBy": updatedBy,
        "updatedTime": updatedTime,
        "userModel": userModel!.toJson(),
      };
}
