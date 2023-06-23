/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Rating extends _i1.SerializableEntity {
  Rating({
    this.id,
    required this.ratedItemId,
    required this.ratedItemCategory,
    required this.rating,
    required this.dateCreated,
    required this.raterId,
  });

  factory Rating.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Rating(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      ratedItemId: serializationManager
          .deserialize<String>(jsonSerialization['ratedItemId']),
      ratedItemCategory: serializationManager
          .deserialize<String>(jsonSerialization['ratedItemCategory']),
      rating:
          serializationManager.deserialize<String>(jsonSerialization['rating']),
      dateCreated: serializationManager
          .deserialize<DateTime>(jsonSerialization['dateCreated']),
      raterId:
          serializationManager.deserialize<int>(jsonSerialization['raterId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String ratedItemId;

  String ratedItemCategory;

  String rating;

  DateTime dateCreated;

  int raterId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'ratedItemId': ratedItemId,
      'ratedItemCategory': ratedItemCategory,
      'rating': rating,
      'dateCreated': dateCreated,
      'raterId': raterId,
    };
  }
}
