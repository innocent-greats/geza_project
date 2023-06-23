/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:demopod_client/src/protocol/business.dart' as _i3;
import 'package:demopod_client/src/protocol/person.dart' as _i4;
import 'package:demopod_client/src/protocol/product.dart' as _i5;
import 'package:demopod_client/src/protocol/service.dart' as _i6;
import 'dart:io' as _i7;
import 'protocol.dart' as _i8;

class _EndpointBusiness extends _i1.EndpointRef {
  _EndpointBusiness(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'business';

  _i2.Future<List<_i3.Business>> getProducts() =>
      caller.callServerEndpoint<List<_i3.Business>>(
        'business',
        'getProducts',
        {},
      );
}

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class _EndpointPerson extends _i1.EndpointRef {
  _EndpointPerson(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'person';

  _i2.Future<List<_i4.Person>> getPerson() =>
      caller.callServerEndpoint<List<_i4.Person>>(
        'person',
        'getPerson',
        {},
      );

  _i2.Future<bool> createPerson(_i4.Person person) =>
      caller.callServerEndpoint<bool>(
        'person',
        'createPerson',
        {'person': person},
      );

  _i2.Future<bool> updatePerson(_i4.Person person) =>
      caller.callServerEndpoint<bool>(
        'person',
        'updatePerson',
        {'person': person},
      );

  _i2.Future<bool> deletePerson(int id) => caller.callServerEndpoint<bool>(
        'person',
        'deletePerson',
        {'id': id},
      );
}

class _EndpointProduct extends _i1.EndpointRef {
  _EndpointProduct(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'product';

  _i2.Future<List<_i5.Product>> getProducts() =>
      caller.callServerEndpoint<List<_i5.Product>>(
        'product',
        'getProducts',
        {},
      );
}

class _EndpointService extends _i1.EndpointRef {
  _EndpointService(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'service';

  _i2.Future<List<_i6.Service>> getProducts() =>
      caller.callServerEndpoint<List<_i6.Service>>(
        'service',
        'getProducts',
        {},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i7.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i8.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    business = _EndpointBusiness(this);
    example = _EndpointExample(this);
    person = _EndpointPerson(this);
    product = _EndpointProduct(this);
    service = _EndpointService(this);
  }

  late final _EndpointBusiness business;

  late final _EndpointExample example;

  late final _EndpointPerson person;

  late final _EndpointProduct product;

  late final _EndpointService service;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'business': business,
        'example': example,
        'person': person,
        'product': product,
        'service': service,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
