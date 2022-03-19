import 'package:glosh/data/model/admin/collection.dart';
import 'package:glosh/data/model/admin/product_image.dart';
import 'package:glosh/data/model/admin/product_option.dart';
import 'package:glosh/data/model/admin/variant.dart';

class Product {
  Product({
    required this.products,
    required this.count,
    required this.offset,
    required this.limit,
  });

  final List<ProductElement>? products;
  final int? count;
  final int? offset;
  final int? limit;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        products: json["products"] == null
            ? null
            : List<ProductElement>.from(
                json["products"].map((x) => ProductElement.fromJson(x))),
        count: json["count"] == null ? null : json["count"],
        offset: json["offset"] == null ? null : json["offset"],
        limit: json["limit"] == null ? null : json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "products": products == null
            ? null
            : List<dynamic>.from(products!.map((x) => x.toJson())),
        "count": count == null ? null : count,
        "offset": offset == null ? null : offset,
        "limit": limit == null ? null : limit,
      };
}

class ProductElement {
  ProductElement({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.handle,
    required this.isGiftcard,
    required this.status,
    required this.thumbnail,
    required this.profileId,
    required this.weight,
    required this.length,
    required this.height,
    required this.width,
    required this.hsCode,
    required this.originCountry,
    required this.midCode,
    required this.material,
    required this.collectionId,
    required this.typeId,
    required this.discountable,
    required this.externalId,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.metadata,
    required this.variants,
    required this.images,
    required this.options,
    required this.tags,
    required this.type,
    required this.collection,
  });

  final String? id;
  final String? title;
  final dynamic subtitle;
  final String? description;
  final String? handle;
  final bool? isGiftcard;
  final String? status;
  final String? thumbnail;
  final String? profileId;
  final int? weight;
  final dynamic length;
  final dynamic height;
  final dynamic width;
  final dynamic hsCode;
  final dynamic originCountry;
  final dynamic midCode;
  final dynamic material;
  final String? collectionId;
  final String? typeId;
  final bool? discountable;
  final dynamic externalId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final dynamic metadata;
  final List<Variant>? variants;
  final List<ImageProduct>? images;
  final List<ProductOption>? options;
  final List<dynamic>? tags;
  final Type? type;
  final CollectionElement? collection;

  factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        subtitle: json["subtitle"],
        description: json["description"] == null ? null : json["description"],
        handle: json["handle"] == null ? null : json["handle"],
        isGiftcard: json["is_giftcard"] == null ? null : json["is_giftcard"],
        status: json["status"] == null ? null : json["status"],
        thumbnail: json["thumbnail"] == null ? null : json["thumbnail"],
        profileId: json["profile_id"] == null ? null : json["profile_id"],
        weight: json["weight"] == null ? null : json["weight"],
        length: json["length"],
        height: json["height"],
        width: json["width"],
        hsCode: json["hs_code"],
        originCountry: json["origin_country"],
        midCode: json["mid_code"],
        material: json["material"],
        collectionId:
            json["collection_id"] == null ? null : json["collection_id"],
        typeId: json["type_id"] == null ? null : json["type_id"],
        discountable:
            json["discountable"] == null ? null : json["discountable"],
        externalId: json["external_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        metadata: json["metadata"],
        variants: json["variants"] == null
            ? null
            : List<Variant>.from(
                json["variants"].map((x) => Variant.fromJson(x))),
        images: json["images"] == null
            ? null
            : List<ImageProduct>.from(
                json["images"].map((x) => ImageProduct.fromJson(x))),
        options: json["options"] == null
            ? null
            : List<ProductOption>.from(
                json["options"].map((x) => ProductOption.fromJson(x))),
        tags: json["tags"] == null
            ? null
            : List<ProductTag>.from(
                json["tags"].map((x) => ProductTag.fromJson(x))),
        type: json["type"] == null ? null : Type.fromJson(json["type"]),
        collection: json["collection"] == null
            ? null
            : CollectionElement.fromJson(json["collection"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "subtitle": subtitle,
        "description": description == null ? null : description,
        "handle": handle == null ? null : handle,
        "is_giftcard": isGiftcard == null ? null : isGiftcard,
        "status": status == null ? null : status,
        "thumbnail": thumbnail == null ? null : thumbnail,
        "profile_id": profileId == null ? null : profileId,
        "weight": weight == null ? null : weight,
        "length": length,
        "height": height,
        "width": width,
        "hs_code": hsCode,
        "origin_country": originCountry,
        "mid_code": midCode,
        "material": material,
        "collection_id": collectionId == null ? null : collectionId,
        "type_id": typeId == null ? null : typeId,
        "discountable": discountable == null ? null : discountable,
        "external_id": externalId,
        "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
        "variants": variants == null
            ? null
            : List<dynamic>.from(variants!.map((x) => x.toJson())),
        "images": images == null
            ? null
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "options": options == null
            ? null
            : List<dynamic>.from(options!.map((x) => x.toJson())),
        "tags": tags == null ? null : List<dynamic>.from(tags!.map((x) => x)),
        "type": type == null ? null : type?.toJson(),
        "collection": collection == null ? null : collection?.toJson(),
      };
}

class ProductTag {
  ProductTag({
    required this.id,
    required this.value,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.metadata,
  });

  final String? id;
  final String? value;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final dynamic metadata;

  factory ProductTag.fromJson(Map<String, dynamic> json) => ProductTag(
        id: json["id"] == null ? null : json["id"],
        value: json["value"] == null ? null : json["value"],
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
        "value": value == null ? null : value,
        "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
      };
}

class Type {
  Type({
    required this.id,
    required this.value,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.metadata,
  });

  final String? id;
  final String? value;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final dynamic metadata;

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        id: json["id"] == null ? null : json["id"],
        value: json["value"] == null ? null : json["value"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime?.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime?.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        metadata: json["metadata"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "value": value == null ? null : value,
        "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
      };
}
