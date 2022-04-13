import 'package:chapter_70/person.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:chapter_70/person_services.dart';
import 'package:http/http.dart' as http;
import 'package:equatable/equatable.dart';

class MockClient extends Mock with http.Client {}

void main() {
  http.Client client = MockClient();

  test('Test ambil data', () async {
    String id = '1';
    Uri url = Uri.parse('.../person/' + id);
    when(client.get(url))
        .thenAnswer((_) async => Future.value(http.Response('''{
        "id": $id,
        "name": "Dodi",
        "age": 10
      }''', 200)));
    Person person = await PersonServices.getPersonID(id, client);
    expect(person, equals(Person(id: 1, name: 'Dodi', age: 10)));
  });

  test('Test error', () async {
    String id = '1';
    Uri url = Uri.parse('.../person/' + id);
    when(client.get(url))
        .thenAnswer((_) async => Future.value(http.Response('''{
        "message": "tidak ada prosees"
      }''', 403)));
    expect(PersonServices.getPersonID(id, client), throwsException);
  });
}
