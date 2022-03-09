import 'dart:convert';
import 'package:glosh/data/model/book_category.dart';

BookModel bookModelFromJson(String str) => BookModel.fromJson(json.decode(str));
String bookModelToJson(BookModel data) => json.encode(data.toJson());

class BookModel {
  BookModel({
    required this.authorName,
    required this.bookCategory,
    required this.bookCategoryId,
    required this.bookStatus,
    required this.createdBy,
    required this.createdTime,
    required this.id,
    required this.imageUrl,
    required this.isbn,
    required this.price,
    required this.publicationDate,
    required this.synopsis,
    required this.title,
    required this.updatedBy,
    required this.updatedTime,
  });

  final String authorName;
  final BookCategory? bookCategory;
  final int bookCategoryId;
  final String bookStatus;
  final String createdBy;
  final String createdTime;
  final int id;
  final String imageUrl;
  final String isbn;
  final int price;
  final String publicationDate;
  final String synopsis;
  final String title;
  final String updatedBy;
  final String updatedTime;

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        authorName: json["authorName"] == null ? null : json["authorName"],
        bookCategory: json["bookCategory"] == null
            ? null
            : BookCategory.fromJson(json["bookCategory"]),
        bookCategoryId:
            json["bookCategoryId"] == null ? null : json["bookCategoryId"],
        bookStatus: json["bookStatus"] == null ? null : json["bookStatus"],
        createdBy: json["createdBy"] == null ? null : json["createdBy"],
        createdTime: json["createdTime"] == null ? null : json["createdTime"],
        id: json["id"] == null ? null : json["id"],
        imageUrl: json["imageUrl"] == null ? null : json["imageUrl"],
        isbn: json["isbn"] == null ? null : json["isbn"],
        price: json["price"] == null ? null : json["price"],
        publicationDate:
            json["publicationDate"] == null ? null : json["publicationDate"],
        synopsis: json["synopsis"] == null ? null : json["synopsis"],
        title: json["title"] == null ? null : json["title"],
        updatedBy: json["updatedBy"] == null ? null : json["updatedBy"],
        updatedTime: json["updatedTime"] == null ? null : json["updatedTime"],
      );

  Map<String, dynamic> toJson() => {
        "authorName": authorName,
        "bookCategory": bookCategory!.toJson(),
        "bookCategoryId": bookCategoryId,
        "bookStatus": bookStatus,
        "createdBy": createdBy,
        "createdTime": createdTime,
        "id": id,
        "imageUrl": imageUrl,
        "isbn": isbn,
        "price": price,
        "publicationDate": publicationDate,
        "synopsis": synopsis,
        "title": title,
        "updatedBy": updatedBy,
        "updatedTime": updatedTime,
      };
}
