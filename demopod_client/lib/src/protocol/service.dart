/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

class Service extends _i1.SerializableEntity {
  Service({
    this.id,
    required this.businessId,
    required this.image,
    this.images,
    required this.name,
    required this.uniqueName,
    required this.category,
    required this.rating,
    required this.isTrending,
  });

  factory Service.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Service(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      businessId: serializationManager
          .deserialize<int>(jsonSerialization['businessId']),
      image:
          serializationManager.deserialize<String>(jsonSerialization['image']),
      images: serializationManager
          .deserialize<List<String>?>(jsonSerialization['images']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      uniqueName: serializationManager
          .deserialize<String>(jsonSerialization['uniqueName']),
      category: serializationManager
          .deserialize<String>(jsonSerialization['category']),
      rating: serializationManager
          .deserialize<List<_i2.Rating?>>(jsonSerialization['rating']),
      isTrending: serializationManager
          .deserialize<String>(jsonSerialization['isTrending']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int businessId;

  String image;

  List<String>? images;

  String name;

  String uniqueName;

  String category;

  List<_i2.Rating?> rating;

  String isTrending;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'businessId': businessId,
      'image': image,
      'images': images,
      'name': name,
      'uniqueName': uniqueName,
      'category': category,
      'rating': rating,
      'isTrending': isTrending,
    };
  }
}
