class Customer {
  Customer({
    required this.customer,
  });

  final CustomerClass? customer;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        customer: json["customer"] == null
            ? null
            : CustomerClass.fromJson(json["customer"]),
      );

  Map<String, dynamic> toJson() => {
        "customer": customer == null ? null : customer?.toJson(),
      };
}

class CustomerClass {
  CustomerClass({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.billingAddressId,
    required this.phone,
    required this.hasAccount,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.metadata,
    required this.shippingAddresses,
    required this.billingAddress,
  });

  final String? id;
  final String? email;
  final String? firstName;
  final String? lastName;
  final dynamic billingAddressId;
  final String? phone;
  final bool? hasAccount;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final dynamic metadata;
  final List<dynamic>? shippingAddresses;
  final dynamic billingAddress;

  factory CustomerClass.fromJson(Map<String, dynamic> json) => CustomerClass(
        id: json["id"] == null ? null : json["id"],
        email: json["email"] == null ? null : json["email"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        billingAddressId: json["billing_address_id"],
        phone: json["phone"] == null ? '-' : json["phone"],
        hasAccount: json["has_account"] == null ? null : json["has_account"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        metadata: json["metadata"],
        shippingAddresses: json["shipping_addresses"] == null
            ? null
            : List<dynamic>.from(json["shipping_addresses"].map((x) => x)),
        billingAddress: json["billing_address"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "email": email == null ? null : email,
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "billing_address_id": billingAddressId,
        "phone": phone == null ? null : phone,
        "has_account": hasAccount == null ? null : hasAccount,
        "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
        "shipping_addresses": shippingAddresses == null
            ? null
            : List<dynamic>.from(shippingAddresses!.map((x) => x)),
        "billing_address": billingAddress,
      };
}
