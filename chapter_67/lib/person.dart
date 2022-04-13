import 'dart:math';

import 'package:flutter/material.dart';

class Person {
  String name;
  int _age;
  List<int> LuckyNumber;

  int get age => _age;

  set age(int value) {
    if (value < 0) {
      value *= -1;
    }
    _age = value;
  }

  Person() {
    name = 'no name';
    age = 0;
    Random r = Random();
    LuckyNumber = [];
    for (var i = 0; i < 3; i++) {
      LuckyNumber.add(r.nextInt(11));
    }
  }
}
