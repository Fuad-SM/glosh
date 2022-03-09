import 'package:glosh/data/model/book_model.dart';

class DetailBook {
  DetailBook({
    required this.bookModel,
    required this.createdBy,
    required this.createdTime,
    required this.id,
    required this.price,
    required this.updatedBy,
    required this.updatedTime,
  });

  final BookModel? bookModel;
  final String createdBy;
  final String createdTime;
  final int id;
  final int price;
  final String updatedBy;
  final String updatedTime;

  factory DetailBook.fromJson(Map<String, dynamic> json) => DetailBook(
        bookModel: json["bookModel"] == null
            ? null
            : BookModel.fromJson(json["bookModel"]),
        createdBy: json["createdBy"] == null ? null : json["createdBy"],
        createdTime: json["createdTime"] == null ? null : json["createdTime"],
        id: json["id"] == null ? null : json["id"],
        price: json["price"] == null ? null : json["price"],
        updatedBy: json["updatedBy"] == null ? null : json["updatedBy"],
        updatedTime: json["updatedTime"] == null ? null : json["updatedTime"],
      );

  Map<String, dynamic> toJson() => {
        "bookModel": bookModel!.toJson(),
        "createdBy": createdBy,
        "createdTime": createdTime,
        "id": id,
        "price": price,
        "updatedBy": updatedBy,
        "updatedTime": updatedTime,
      };
}
