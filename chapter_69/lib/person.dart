import 'package:equatable/equatable.dart';

class BasePerson {}

class Person extends BasePerson with EquatableMixin {
  String name;
  int age;

  Person({this.name = 'no name', this.age = 0});

  @override
  // TODO: implement props
  List<Object> get props => [name, age];

  // @override
  // operator ==(other) {
  //   if (other is Person) {
  //     if (name == other.name && age == other.age) {
  //       return true;
  //     }
  //   }
  //   return false;
  // }

}
