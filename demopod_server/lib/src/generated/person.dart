/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Person extends _i1.TableRow {
  Person({
    int? id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    this.password,
    required this.phone,
    required this.location,
  }) : super(id);

  factory Person.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Person(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      firstName: serializationManager
          .deserialize<String>(jsonSerialization['firstName']),
      lastName: serializationManager
          .deserialize<String>(jsonSerialization['lastName']),
      userName: serializationManager
          .deserialize<String>(jsonSerialization['userName']),
      password: serializationManager
          .deserialize<String?>(jsonSerialization['password']),
      phone:
          serializationManager.deserialize<String>(jsonSerialization['phone']),
      location: serializationManager
          .deserialize<String>(jsonSerialization['location']),
    );
  }

  static final t = PersonTable();

  String firstName;

  String lastName;

  String userName;

  String? password;

  String phone;

  String location;

  @override
  String get tableName => 'person';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'userName': userName,
      'password': password,
      'phone': phone,
      'location': location,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'userName': userName,
      'password': password,
      'phone': phone,
      'location': location,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'userName': userName,
      'password': password,
      'phone': phone,
      'location': location,
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
      case 'firstName':
        firstName = value;
        return;
      case 'lastName':
        lastName = value;
        return;
      case 'userName':
        userName = value;
        return;
      case 'password':
        password = value;
        return;
      case 'phone':
        phone = value;
        return;
      case 'location':
        location = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Person>> find(
    _i1.Session session, {
    PersonExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Person>(
      where: where != null ? where(Person.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Person?> findSingleRow(
    _i1.Session session, {
    PersonExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Person>(
      where: where != null ? where(Person.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Person?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Person>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PersonExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Person>(
      where: where(Person.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Person row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Person row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Person row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PersonExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Person>(
      where: where != null ? where(Person.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PersonExpressionBuilder = _i1.Expression Function(PersonTable);

class PersonTable extends _i1.Table {
  PersonTable() : super(tableName: 'person');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final firstName = _i1.ColumnString('firstName');

  final lastName = _i1.ColumnString('lastName');

  final userName = _i1.ColumnString('userName');

  final password = _i1.ColumnString('password');

  final phone = _i1.ColumnString('phone');

  final location = _i1.ColumnString('location');

  @override
  List<_i1.Column> get columns => [
        id,
        firstName,
        lastName,
        userName,
        password,
        phone,
        location,
      ];
}

@Deprecated('Use PersonTable.t instead.')
PersonTable tPerson = PersonTable();
