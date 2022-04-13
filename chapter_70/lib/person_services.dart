import 'dart:convert';

import 'package:chapter_70/person.dart';
import 'package:http/http.dart' as http;

class PersonServices {
  static Future<Person> getPersonID(String id, http.Client client) async {
    Uri url = Uri.parse('.../person/' + id);

    var response = await client.get(url);
    if (response.statusCode != 200) {
      throw Exception('Error');
    }
    var result = json.decode(response.body);

    return Person.fromJson(result);
  }
}
