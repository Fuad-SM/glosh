import 'dart:convert';

CollectionById collectionByIdFromJson(String str) =>
    CollectionById.fromJson(json.decode(str));

String collectionByIdToJson(CollectionById data) => json.encode(data.toJson());

class CollectionById {
  CollectionById({
    required this.collection,
  });

  final CollectionId? collection;

  factory CollectionById.fromJson(Map<String, dynamic> json) => CollectionById(
        collection: json["collection"] == null
            ? null
            : CollectionId.fromJson(json["collection"]),
      );

  Map<String, dynamic> toJson() => {
        "collection": collection == null ? null : collection?.toJson(),
      };
}

class CollectionId {
  CollectionId({
    required this.id,
    required this.title,
    required this.handle,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.metadata,
    required this.products,
  });

  final String? id;
  final String? title;
  final String? handle;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final dynamic metadata;
  final List<dynamic>? products;

  factory CollectionId.fromJson(Map<String, dynamic> json) => CollectionId(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        handle: json["handle"] == null ? null : json["handle"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        metadata: json["metadata"],
        products: json["products"] == null
            ? null
            : List<dynamic>.from(json["products"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "handle": handle == null ? null : handle,
        "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
        "products": products == null
            ? null
            : List<dynamic>.from(products!.map((x) => x)),
      };
}
