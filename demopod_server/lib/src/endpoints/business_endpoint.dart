import 'package:demopod_server/src/generated/business.dart';
import 'package:serverpod/serverpod.dart';

class BusinessEndpoint extends Endpoint {
  Future<List<Business>> getProducts(Session session) async {
    return await Business.find(session);
  }

  
}
