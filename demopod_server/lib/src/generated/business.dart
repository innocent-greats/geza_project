/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

class Business extends _i1.TableRow {
  Business({
    int? id,
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
  }) : super(id);

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

  static final t = BusinessTable();

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
  String get tableName => 'business';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
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
    };
  }

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'personId':
        personId = value;
        return;
      case 'logo':
        logo = value;
        return;
      case 'name':
        name = value;
        return;
      case 'category':
        category = value;
        return;
      case 'address':
        address = value;
        return;
      case 'ratings':
        ratings = value;
        return;
      case 'reviews':
        reviews = value;
        return;
      case 'isActive':
        isActive = value;
        return;
      case 'dateCreated':
        dateCreated = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Business>> find(
    _i1.Session session, {
    BusinessExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Business>(
      where: where != null ? where(Business.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Business?> findSingleRow(
    _i1.Session session, {
    BusinessExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Business>(
      where: where != null ? where(Business.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Business?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Business>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required BusinessExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Business>(
      where: where(Business.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Business row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Business row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Business row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    BusinessExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Business>(
      where: where != null ? where(Business.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef BusinessExpressionBuilder = _i1.Expression Function(BusinessTable);

class BusinessTable extends _i1.Table {
  BusinessTable() : super(tableName: 'business');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final personId = _i1.ColumnInt('personId');

  final logo = _i1.ColumnString('logo');

  final name = _i1.ColumnString('name');

  final category = _i1.ColumnString('category');

  final address = _i1.ColumnString('address');

  final ratings = _i1.ColumnSerializable('ratings');

  final reviews = _i1.ColumnSerializable('reviews');

  final isActive = _i1.ColumnBool('isActive');

  final dateCreated = _i1.ColumnDateTime('dateCreated');

  @override
  List<_i1.Column> get columns => [
        id,
        personId,
        logo,
        name,
        category,
        address,
        ratings,
        reviews,
        isActive,
        dateCreated,
      ];
}

@Deprecated('Use BusinessTable.t instead.')
BusinessTable tBusiness = BusinessTable();
