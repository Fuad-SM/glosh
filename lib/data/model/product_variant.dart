import 'package:glosh/data/model/variant.dart';

class ProductVariant {
  ProductVariant({
    required this.variants,
    required this.count,
    required this.offset,
    required this.limit,
  });

  final List<VariantElement>? variants;
  final int? count;
  final int? offset;
  final int? limit;

  factory ProductVariant.fromJson(Map<String, dynamic> json) => ProductVariant(
        variants: json["variants"] == null
            ? null
            : List<VariantElement>.from(
                json["variants"].map((x) => VariantElement.fromJson(x))),
        count: json["count"] == null ? null : json["count"],
        offset: json["offset"] == null ? null : json["offset"],
        limit: json["limit"] == null ? null : json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "variants": variants == null
            ? null
            : List<dynamic>.from(variants!.map((x) => x.toJson())),
        "count": count == null ? null : count,
        "offset": offset == null ? null : offset,
        "limit": limit == null ? null : limit,
      };
}

class VariantElement {
  VariantElement({
    required this.id,
    required this.title,
    required this.productId,
    required this.sku,
    required this.barcode,
    required this.ean,
    required this.upc,
    required this.inventoryQuantity,
    required this.allowBackorder,
    required this.manageInventory,
    required this.hsCode,
    required this.originCountry,
    required this.midCode,
    required this.material,
    required this.weight,
    required this.length,
    required this.height,
    required this.width,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.metadata,
    required this.product,
    required this.prices,
    required this.options,
  });

  final String? id;
  final String? title;
  final String? productId;
  final dynamic sku;
  final dynamic barcode;
  final dynamic ean;
  final dynamic upc;
  final int? inventoryQuantity;
  final bool? allowBackorder;
  final bool? manageInventory;
  final dynamic hsCode;
  final dynamic originCountry;
  final dynamic midCode;
  final dynamic material;
  final dynamic weight;
  final dynamic length;
  final dynamic height;
  final dynamic width;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final dynamic metadata;
  final Product? product;
  final List<Price>? prices;
  final List<VariantOption>? options;

  factory VariantElement.fromJson(Map<String, dynamic> json) => VariantElement(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        productId: json["product_id"] == null ? null : json["product_id"],
        sku: json["sku"],
        barcode: json["barcode"],
        ean: json["ean"],
        upc: json["upc"],
        inventoryQuantity: json["inventory_quantity"] == null
            ? null
            : json["inventory_quantity"],
        allowBackorder:
            json["allow_backorder"] == null ? null : json["allow_backorder"],
        manageInventory:
            json["manage_inventory"] == null ? null : json["manage_inventory"],
        hsCode: json["hs_code"],
        originCountry: json["origin_country"],
        midCode: json["mid_code"],
        material: json["material"],
        weight: json["weight"],
        length: json["length"],
        height: json["height"],
        width: json["width"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        metadata: json["metadata"],
        product:
            json["product"] == null ? null : Product.fromJson(json["product"]),
        prices: json["prices"] == null
            ? null
            : List<Price>.from(json["prices"].map((x) => Price.fromJson(x))),
        options: json["options"] == null
            ? null
            : List<VariantOption>.from(
                json["options"].map((x) => VariantOption.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "product_id": productId == null ? null : productId,
        "sku": sku,
        "barcode": barcode,
        "ean": ean,
        "upc": upc,
        "inventory_quantity":
            inventoryQuantity == null ? null : inventoryQuantity,
        "allow_backorder": allowBackorder == null ? null : allowBackorder,
        "manage_inventory": manageInventory == null ? null : manageInventory,
        "hs_code": hsCode,
        "origin_country": originCountry,
        "mid_code": midCode,
        "material": material,
        "weight": weight,
        "length": length,
        "height": height,
        "width": width,
        "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
        "product": product == null ? null : product?.toJson(),
        "prices": prices == null
            ? null
            : List<dynamic>.from(prices!.map((x) => x.toJson())),
        "options": options == null
            ? null
            : List<dynamic>.from(options!.map((x) => x.toJson())),
      };
}

class Product {
  Product({
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
  final dynamic collectionId;
  final dynamic typeId;
  final bool? discountable;
  final dynamic externalId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final dynamic metadata;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
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
        collectionId: json["collection_id"],
        typeId: json["type_id"],
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
        "collection_id": collectionId,
        "type_id": typeId,
        "discountable": discountable == null ? null : discountable,
        "external_id": externalId,
        "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "metadata": metadata,
      };
}
