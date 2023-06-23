/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/business_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import '../endpoints/persons_endpoint.dart' as _i4;
import '../endpoints/products_endpoint.dart' as _i5;
import '../endpoints/service_endpoint.dart' as _i6;
import 'package:demopod_server/src/generated/person.dart' as _i7;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'business': _i2.BusinessEndpoint()
        ..initialize(
          server,
          'business',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'person': _i4.PersonEndpoint()
        ..initialize(
          server,
          'person',
          null,
        ),
      'product': _i5.ProductEndpoint()
        ..initialize(
          server,
          'product',
          null,
        ),
      'service': _i6.ServiceEndpoint()
        ..initialize(
          server,
          'service',
          null,
        ),
    };
    connectors['business'] = _i1.EndpointConnector(
      name: 'business',
      endpoint: endpoints['business']!,
      methodConnectors: {
        'getProducts': _i1.MethodConnector(
          name: 'getProducts',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['business'] as _i2.BusinessEndpoint)
                  .getProducts(session),
        )
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['person'] = _i1.EndpointConnector(
      name: 'person',
      endpoint: endpoints['person']!,
      methodConnectors: {
        'getPerson': _i1.MethodConnector(
          name: 'getPerson',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['person'] as _i4.PersonEndpoint).getPerson(session),
        ),
        'createPerson': _i1.MethodConnector(
          name: 'createPerson',
          params: {
            'person': _i1.ParameterDescription(
              name: 'person',
              type: _i1.getType<_i7.Person>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['person'] as _i4.PersonEndpoint).createPerson(
            session,
            params['person'],
          ),
        ),
        'updatePerson': _i1.MethodConnector(
          name: 'updatePerson',
          params: {
            'person': _i1.ParameterDescription(
              name: 'person',
              type: _i1.getType<_i7.Person>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['person'] as _i4.PersonEndpoint).updatePerson(
            session,
            params['person'],
          ),
        ),
        'deletePerson': _i1.MethodConnector(
          name: 'deletePerson',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['person'] as _i4.PersonEndpoint).deletePerson(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['product'] = _i1.EndpointConnector(
      name: 'product',
      endpoint: endpoints['product']!,
      methodConnectors: {
        'getProducts': _i1.MethodConnector(
          name: 'getProducts',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['product'] as _i5.ProductEndpoint)
                  .getProducts(session),
        )
      },
    );
    connectors['service'] = _i1.EndpointConnector(
      name: 'service',
      endpoint: endpoints['service']!,
      methodConnectors: {
        'getProducts': _i1.MethodConnector(
          name: 'getProducts',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['service'] as _i6.ServiceEndpoint)
                  .getProducts(session),
        )
      },
    );
  }
}
