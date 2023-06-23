/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

class Business extends _i1.SerializableEntity {
  Business({
    this.id,
    required this.personId,
    required this.logo,
    required this.name,
    required this.category,
    required this.address,
    required this.ratings,
    required this.reviews,
    required this.isActive,
    required this.dateCreated,
    required this.locationCoords,
  });

  factory Business.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Business(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      personId:
          serializationManager.deserialize<int>(jsonSerialization['personId']),
      logo: serializationManager.deserialize<String>(jsonSerialization['logo']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      category: serializationManager
          .deserialize<String>(jsonSerialization['category']),
      address: serializationManager
          .deserialize<String>(jsonSerialization['address']),
      ratings: serializationManager
          .deserialize<List<_i2.Rating?>>(jsonSerialization['ratings']),
      reviews: serializationManager
          .deserialize<List<_i2.Review?>>(jsonSerialization['reviews']),
      isActive:
          serializationManager.deserialize<bool>(jsonSerialization['isActive']),
      dateCreated: serializationManager
          .deserialize<DateTime>(jsonSerialization['dateCreated']),
      locationCoords:
          serializationManager.deserialize<List<_i2.LocationCoords?>>(
              jsonSerialization['locationCoords']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int personId;

  String logo;

  String name;

  String category;

  String address;

  List<_i2.Rating?> ratings;

  List<_i2.Review?> reviews;

  bool isActive;

  DateTime dateCreated;

  List<_i2.LocationCoords?> locationCoords;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'personId': personId,
      'logo': logo,
      'name': name,
      'category': category,
      'address': address,
      'ratings': ratings,
      'reviews': reviews,
      'isActive': isActive,
      'dateCreated': dateCreated,
      'locationCoords': locationCoords,
    };
  }
}
