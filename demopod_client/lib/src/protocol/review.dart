/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

class Review extends _i1.SerializableEntity {
  Review({
    this.id,
    required this.review,
    required this.dateCreated,
    required this.reviewerId,
    required this.comments,
  });

  factory Review.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Review(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      review:
          serializationManager.deserialize<String>(jsonSerialization['review']),
      dateCreated: serializationManager
          .deserialize<DateTime>(jsonSerialization['dateCreated']),
      reviewerId: serializationManager
          .deserialize<int>(jsonSerialization['reviewerId']),
      comments: serializationManager
          .deserialize<List<_i2.Comment?>>(jsonSerialization['comments']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String review;

  DateTime dateCreated;

  int reviewerId;

  List<_i2.Comment?> comments;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'review': review,
      'dateCreated': dateCreated,
      'reviewerId': reviewerId,
      'comments': comments,
    };
  }
}
