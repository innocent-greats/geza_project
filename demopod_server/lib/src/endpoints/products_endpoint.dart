import 'package:demopod_server/src/generated/product.dart';
import 'package:serverpod/serverpod.dart';

class ProductEndpoint extends Endpoint {
  Future<List<Product>> getProducts(Session session) async {
    return await Product.find(session);
  }

  
}
