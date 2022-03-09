import 'dart:convert';
import 'package:glosh/data/model/transaction.dart';
import 'package:glosh/data/model/user.dart';

Shipment shipmentFromJson(String str) => Shipment.fromJson(json.decode(str));

String shipmentToJson(Shipment data) => json.encode(data.toJson());

class Shipment {
  Shipment({
    required this.address,
    required this.courier,
    required this.createdBy,
    required this.createdTime,
    required this.id,
    required this.shipmentStatus,
    required this.trackingNumber,
    required this.transactionModel,
    required this.updatedBy,
    required this.updatedTime,
    required this.userModel,
  });

  final String address;
  final String courier;
  final String createdBy;
  final String createdTime;
  final int id;
  final String shipmentStatus;
  final String trackingNumber;
  final TransactionModel? transactionModel;
  final String updatedBy;
  final String updatedTime;
  final UserModel? userModel;

  factory Shipment.fromJson(Map<String, dynamic> json) => Shipment(
        address: json["address"] == null ? null : json["address"],
        courier: json["courier"] == null ? null : json["courier"],
        createdBy: json["createdBy"] == null ? null : json["createdBy"],
        createdTime: json["createdTime"] == null ? null : json["createdTime"],
        id: json["id"] == null ? null : json["id"],
        shipmentStatus:
            json["shipmentStatus"] == null ? null : json["shipmentStatus"],
        trackingNumber:
            json["trackingNumber"] == null ? null : json["trackingNumber"],
        transactionModel: json["transactionModel"] == null
            ? null
            : TransactionModel.fromJson(json["transactionModel"]),
        updatedBy: json["updatedBy"] == null ? null : json["updatedBy"],
        updatedTime: json["updatedTime"] == null ? null : json["updatedTime"],
        userModel: json["userModel"] == null
            ? null
            : UserModel.fromJson(json["userModel"]),
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "courier": courier,
        "createdBy": createdBy,
        "createdTime": createdTime,
        "id": id,
        "shipmentStatus": shipmentStatus,
        "trackingNumber": trackingNumber,
        "transactionModel": transactionModel!.toJson(),
        "updatedBy": updatedBy,
        "updatedTime": updatedTime,
        "userModel": userModel!.toJson(),
      };
}
