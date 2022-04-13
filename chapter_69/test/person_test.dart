import 'package:chapter_69/person.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Person p = Person(name: 'Budi', age: 10);
  if (p == Person(name: 'Budi', age: 10)) {
    print('sama');
  } else {
    print('tidak sama');
  }

  List<Person> person = [p];
  if (person.contains(Person(name: 'Budi', age: 10))) {
    print('ada');
  } else {
    print('tidak ada');
  }
}
