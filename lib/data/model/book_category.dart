import 'dart:convert';

BookCategory bookCategoryFromJson(String str) =>
    BookCategory.fromJson(json.decode(str));
String bookCategoryToJson(BookCategory data) => json.encode(data.toJson());

class BookCategory {
  BookCategory({
    required this.code,
    required this.createdBy,
    required this.createdTime,
    required this.id,
    required this.name,
    required this.updatedBy,
    required this.updatedTime,
  });

  final String code;
  final String createdBy;
  final String createdTime;
  final int id;
  final String name;
  final String updatedBy;
  final String updatedTime;

  factory BookCategory.fromJson(Map<String, dynamic> json) => BookCategory(
        code: json["code"] == null ? null : json["code"],
        createdBy: json["createdBy"] == null ? null : json["createdBy"],
        createdTime: json["createdTime"] == null ? null : json["createdTime"],
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        updatedBy: json["updatedBy"] == null ? ' ' : json["updatedBy"],
        updatedTime: json["updatedTime"] == null ? ' ' : json["updatedTime"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "createdBy": createdBy,
        "createdTime": createdTime,
        "id": id,
        "name": name,
        "updatedBy": updatedBy,
        "updatedTime": updatedTime,
      };
}
