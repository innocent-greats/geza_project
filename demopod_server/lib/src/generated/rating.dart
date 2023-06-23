/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Rating extends _i1.TableRow {
  Rating({
    int? id,
    required this.ratedItemId,
    required this.ratedItemCategory,
    required this.rating,
    required this.dateCreated,
    required this.raterId,
  }) : super(id);

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

  static final t = RatingTable();

  String ratedItemId;

  String ratedItemCategory;

  String rating;

  DateTime dateCreated;

  int raterId;

  @override
  String get tableName => 'rating';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'ratedItemId': ratedItemId,
      'ratedItemCategory': ratedItemCategory,
      'rating': rating,
      'dateCreated': dateCreated,
      'raterId': raterId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'ratedItemId': ratedItemId,
      'ratedItemCategory': ratedItemCategory,
      'rating': rating,
      'dateCreated': dateCreated,
      'raterId': raterId,
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
      case 'ratedItemId':
        ratedItemId = value;
        return;
      case 'ratedItemCategory':
        ratedItemCategory = value;
        return;
      case 'rating':
        rating = value;
        return;
      case 'dateCreated':
        dateCreated = value;
        return;
      case 'raterId':
        raterId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Rating>> find(
    _i1.Session session, {
    RatingExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Rating>(
      where: where != null ? where(Rating.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Rating?> findSingleRow(
    _i1.Session session, {
    RatingExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Rating>(
      where: where != null ? where(Rating.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Rating?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Rating>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required RatingExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Rating>(
      where: where(Rating.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Rating row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Rating row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Rating row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    RatingExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Rating>(
      where: where != null ? where(Rating.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef RatingExpressionBuilder = _i1.Expression Function(RatingTable);

class RatingTable extends _i1.Table {
  RatingTable() : super(tableName: 'rating');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final ratedItemId = _i1.ColumnString('ratedItemId');

  final ratedItemCategory = _i1.ColumnString('ratedItemCategory');

  final rating = _i1.ColumnString('rating');

  final dateCreated = _i1.ColumnDateTime('dateCreated');

  final raterId = _i1.ColumnInt('raterId');

  @override
  List<_i1.Column> get columns => [
        id,
        ratedItemId,
        ratedItemCategory,
        rating,
        dateCreated,
        raterId,
      ];
}

@Deprecated('Use RatingTable.t instead.')
RatingTable tRating = RatingTable();
