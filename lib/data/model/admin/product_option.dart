class ProductOption {
  ProductOption({
    required this.id,
    required this.title,
    required this.productId,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.metadata,
  });

  final String? id;
  final String? title;
  final String? productId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final dynamic metadata;

  factory ProductOption.fromJson(Map<String, dynamic> json) => ProductOption(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        productId: json["product_id"] == null ? null : json["product_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        metadata: json["metadata"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "product_id": productId == null ? null : productId,
        "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
      };
}
