import 'package:glosh/data/model/detail_book.dart';
import 'package:glosh/data/model/user.dart';
import 'dart:convert';

TransactionModel transactionModelFromJson(String str) =>
    TransactionModel.fromJson(json.decode(str));

String transactionModelToJson(TransactionModel data) =>
    json.encode(data.toJson());

class TransactionModel {
  TransactionModel({
    required this.createdBy,
    required this.createdTime,
    required this.details,
    required this.id,
    required this.invoiceNumber,
    required this.paymentMethod,
    required this.paymentTime,
    required this.receiptImageUrl,
    required this.transactionStatus,
    required this.updatedBy,
    required this.updatedTime,
    required this.userModel,
  });

  final String createdBy;
  final String createdTime;
  final List<DetailBook>? details;
  final int id;
  final String invoiceNumber;
  final String paymentMethod;
  final DateTime? paymentTime;
  final String receiptImageUrl;
  final String transactionStatus;
  final String updatedBy;
  final String updatedTime;
  final UserModel? userModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      TransactionModel(
        createdBy: json["createdBy"] == null ? null : json["createdBy"],
        createdTime: json["createdTime"] == null ? null : json["createdTime"],
        details: json["details"] == null
            ? null
            : List<DetailBook>.from(
                json["details"].map((x) => DetailBook.fromJson(x))),
        id: json["id"] == null ? null : json["id"],
        invoiceNumber:
            json["invoiceNumber"] == null ? null : json["invoiceNumber"],
        paymentMethod:
            json["paymentMethod"] == null ? null : json["paymentMethod"],
        paymentTime: json["paymentTime"] == null
            ? null
            : DateTime.parse(json["paymentTime"]),
        receiptImageUrl:
            json["receiptImageUrl"] == null ? null : json["receiptImageUrl"],
        transactionStatus: json["transactionStatus"] == null
            ? null
            : json["transactionStatus"],
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
        "invoiceNumber": invoiceNumber,
        "paymentMethod": paymentMethod,
        "paymentTime": paymentTime!.toIso8601String(),
        "receiptImageUrl": receiptImageUrl,
        "transactionStatus": transactionStatus,
        "updatedBy": updatedBy,
        "updatedTime": updatedTime,
        "userModel": userModel!.toJson(),
      };
}
