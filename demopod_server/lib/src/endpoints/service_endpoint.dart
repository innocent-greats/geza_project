import 'package:demopod_server/src/generated/service.dart';
import 'package:serverpod/serverpod.dart';

class ServiceEndpoint extends Endpoint {
  Future<List<Service>> getProducts(Session session) async {
    return await Service.find(session);
  }
}
