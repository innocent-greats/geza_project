import 'package:demopod_server/src/generated/person.dart';
import 'package:serverpod/serverpod.dart';

class PersonEndpoint extends Endpoint {
  Future<List<Person>> getPerson(Session session) async {
    return await Person.find(session);
  }

  Future<bool> createPerson(Session session, Person person) async {
    try {
      session.log('createPerson called');
      
      await Person.insert(session, person);
    } catch (e) {
      session.log(e.toString());
    } finally {}
    return true;
  }

  Future<bool> updatePerson(Session session, Person person) async {
    var result = await Person.update(session, person);
    return result;
  }

  Future<bool> deletePerson(Session session, int id) async {
    var result = await Person.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }
}
