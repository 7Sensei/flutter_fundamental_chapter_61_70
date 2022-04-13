import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:chapter_68/warrior.dart';

class MockWarrior extends Mock implements Warrior {}

void main() {
  MockWarrior warrior = MockWarrior();
  Warrior w = Warrior();

  test('vefify demo', () {
    warrior.rest();
    warrior.training();
    verifyInOrder([warrior.rest(), warrior.training()]);
  });

  test('Null Demo', () {
    expect(warrior.name, isNull);
  });

  test('theReturn Demo', () {
    when(warrior.name).thenReturn('No name');
    expect(warrior.name, equals('No name'));
  });

  test('thenThrow', () {
    when(warrior.rest()).thenThrow(Exception('Can`t Sleep'));
    expect(() => warrior.rest(), throwsException);
  });

  test('thenAnswer', () async {
    when(warrior.training()).thenAnswer((realInvocation) => Future.value(true));
    bool result = await warrior.training();
    expect(result, equals(true));
  });
}
