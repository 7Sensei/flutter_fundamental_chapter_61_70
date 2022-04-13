import 'dart:math';

import 'package:chapter_67/person.dart';
import 'package:flutter_test/flutter_test.dart';

import 'widget_test.dart';

void main() {
  Person p;
  p = Person();

  group(
    'Mengecek class person',
    () {
      Person p;
      p = Person();

      test('initialisasi', () {
        print('test 1');
        expect(p.name, equals('no name'));
      });

      test('Mengecek Positve', () {
        print('test 2');
        p.age = -5;
        expect(p.age, isPositive);
      });

      test('Angak keberuntungan harus 3  bilangan positif', () {
        expect(p.LuckyNumber,
            allOf(hasLength(equals(3)), isNot(anyElement(isNegative))));
      });

      setUp(() {
        print('Set Up');
      });

      tearDown(() {
        print('teardown');
      });
    },
  );
}
