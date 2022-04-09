import 'dart:convert';

String createCustomerToJson(CreateCustomer data) => json.encode(data.toJson());
String updateCustomerToJson(UpdateCustomer data) => json.encode(data.toJson());

class CreateCustomer {
  CreateCustomer({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
  });

  final String? email;
  final String? password;
  final String? firstName;
  final String? lastName;

  factory CreateCustomer.fromJson(Map<String, dynamic> json) => CreateCustomer(
        email: json["email"] == null ? null : json["email"],
        password: json["password"] == null ? null : json["password"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
      );

  Map<String, dynamic> toJson() => {
        "email": email == null ? null : email,
        "password": password == null ? null : password,
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
      };
}

class UpdateCustomer {
  UpdateCustomer({
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.phone,
  });

  final String? password;
  final String? firstName;
  final String? lastName;
  final String? phone;

  factory UpdateCustomer.fromJson(Map<String, dynamic> json) => UpdateCustomer(
        password: json["password"] == null ? null : json["password"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        phone: json["phone"] == null ? null : json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "password": password == null ? null : password,
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "phone": phone == null ? null : phone,
      };
}
