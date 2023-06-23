/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

class Product extends _i1.TableRow {
  Product({
    int? id,
    required this.businessId,
    required this.image,
    this.images,
    required this.name,
    required this.uniqueName,
    required this.category,
    this.price,
    required this.rating,
    required this.isTrending,
  }) : super(id);

  factory Product.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Product(
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
      price:
          serializationManager.deserialize<String?>(jsonSerialization['price']),
      rating: serializationManager
          .deserialize<List<_i2.Rating?>>(jsonSerialization['rating']),
      isTrending: serializationManager
          .deserialize<String>(jsonSerialization['isTrending']),
    );
  }

  static final t = ProductTable();

  int businessId;

  String image;

  List<String>? images;

  String name;

  String uniqueName;

  String category;

  String? price;

  List<_i2.Rating?> rating;

  String isTrending;

  @override
  String get tableName => 'product';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'businessId': businessId,
      'image': image,
      'images': images,
      'name': name,
      'uniqueName': uniqueName,
      'category': category,
      'price': price,
      'rating': rating,
      'isTrending': isTrending,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'businessId': businessId,
      'image': image,
      'images': images,
      'name': name,
      'uniqueName': uniqueName,
      'category': category,
      'price': price,
      'rating': rating,
      'isTrending': isTrending,
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
      case 'businessId':
        businessId = value;
        return;
      case 'image':
        image = value;
        return;
      case 'images':
        images = value;
        return;
      case 'name':
        name = value;
        return;
      case 'uniqueName':
        uniqueName = value;
        return;
      case 'category':
        category = value;
        return;
      case 'price':
        price = value;
        return;
      case 'rating':
        rating = value;
        return;
      case 'isTrending':
        isTrending = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Product>> find(
    _i1.Session session, {
    ProductExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Product>(
      where: where != null ? where(Product.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Product?> findSingleRow(
    _i1.Session session, {
    ProductExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Product>(
      where: where != null ? where(Product.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Product?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Product>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required ProductExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Product>(
      where: where(Product.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    ProductExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Product>(
      where: where != null ? where(Product.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef ProductExpressionBuilder = _i1.Expression Function(ProductTable);

class ProductTable extends _i1.Table {
  ProductTable() : super(tableName: 'product');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final businessId = _i1.ColumnInt('businessId');

  final image = _i1.ColumnString('image');

  final images = _i1.ColumnSerializable('images');

  final name = _i1.ColumnString('name');

  final uniqueName = _i1.ColumnString('uniqueName');

  final category = _i1.ColumnString('category');

  final price = _i1.ColumnString('price');

  final rating = _i1.ColumnSerializable('rating');

  final isTrending = _i1.ColumnString('isTrending');

  @override
  List<_i1.Column> get columns => [
        id,
        businessId,
        image,
        images,
        name,
        uniqueName,
        category,
        price,
        rating,
        isTrending,
      ];
}

@Deprecated('Use ProductTable.t instead.')
ProductTable tProduct = ProductTable();
