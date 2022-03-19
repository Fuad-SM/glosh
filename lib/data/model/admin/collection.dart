import 'package:glosh/data/model/admin/product.dart';

class Collection {
  Collection({
    required this.collections,
    required this.count,
    required this.offset,
    required this.limit,
  });

  final List<CollectionElement>? collections;
  final int? count;
  final int? offset;
  final int? limit;

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        collections: json["collections"] == null
            ? null
            : List<CollectionElement>.from(
                json["collections"].map((x) => ProductElement.fromJson(x))),
        count: json["count"] == null ? null : json["count"],
        offset: json["offset"] == null ? null : json["offset"],
        limit: json["limit"] == null ? null : json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "collections": collections == null
            ? null
            : List<dynamic>.from(collections!.map((x) => x)),
        "count": count == null ? null : count,
        "offset": offset == null ? null : offset,
        "limit": limit == null ? null : limit,
      };
}

class CollectionElement {
  CollectionElement({
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

  factory CollectionElement.fromJson(Map<String, dynamic> json) =>
      CollectionElement(
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
