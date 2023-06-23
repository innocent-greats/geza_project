/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

class Review extends _i1.TableRow {
  Review({
    int? id,
    required this.review,
    required this.dateCreated,
    required this.reviewerId,
    required this.comments,
  }) : super(id);

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

  static final t = ReviewTable();

  String review;

  DateTime dateCreated;

  int reviewerId;

  List<_i2.Comment?> comments;

  @override
  String get tableName => 'review';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'review': review,
      'dateCreated': dateCreated,
      'reviewerId': reviewerId,
      'comments': comments,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'review': review,
      'dateCreated': dateCreated,
      'reviewerId': reviewerId,
      'comments': comments,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'review':
        review = value;
        return;
      case 'dateCreated':
        dateCreated = value;
        return;
      case 'reviewerId':
        reviewerId = value;
        return;
      case 'comments':
        comments = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Review>> find(
    _i1.Session session, {
    ReviewExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Review>(
      where: where != null ? where(Review.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Review?> findSingleRow(
    _i1.Session session, {
    ReviewExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Review>(
      where: where != null ? where(Review.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Review?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Review>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required ReviewExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Review>(
      where: where(Review.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Review row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Review row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Review row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    ReviewExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Review>(
      where: where != null ? where(Review.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef ReviewExpressionBuilder = _i1.Expression Function(ReviewTable);

class ReviewTable extends _i1.Table {
  ReviewTable() : super(tableName: 'review');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final review = _i1.ColumnString('review');

  final dateCreated = _i1.ColumnDateTime('dateCreated');

  final reviewerId = _i1.ColumnInt('reviewerId');

  final comments = _i1.ColumnSerializable('comments');

  @override
  List<_i1.Column> get columns => [
        id,
        review,
        dateCreated,
        reviewerId,
        comments,
      ];
}

@Deprecated('Use ReviewTable.t instead.')
ReviewTable tReview = ReviewTable();
