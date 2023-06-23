/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Person extends _i1.SerializableEntity {
  Person({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    this.password,
    required this.phone,
    required this.location,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String firstName;

  String lastName;

  String userName;

  String? password;

  String phone;

  String location;

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
}
