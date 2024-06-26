import 'package:learn_dart_together/0308/wand.dart';
import 'package:learn_dart_together/0308/wizard.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  Wand wand01 = Wand(name: 'd', power: 30.3);
  Wizard wizard = Wizard(name: 'd', hp: 40, mp: 10, wand: wand01);
  test('마법사와 지팡이 이름 길이 테스트', () {
    // 마법사 이름 3글자 이하
    // wizard.name = 'w'; // error
    wizard.name = 'ww'; // error
    // wizard.name = 'ww2'; // not error
  });

  test('마법사 hp 음수라면 0으로 출력되는지 체크', () {
    // wizard.hp = -3; // 0 출력
    wizard.hp = -1; // 0 출력
    // wizard.hp = 0; // 0 출력
    // wizard.hp = 3; // 3 출력

    // print로 확인하는 방법
    print(wizard.hp);

    // exception으로 확인하는 방법
    expect(wizard.hp, 0); // not error
    // expect(wizard.hp, 3); // error
    // expect(wizard.hp, -3); // error


  });

  test('마법사 mp 범위 테스트', () {
    // 마법사의 mp는 0 이상으로 설정해야 한다
    // wizard.mp = -19; // error
    // wizard.mp = 0; // not error
    wizard.mp = 30; // not error
  });
}
