import 'functions/delimeters_calculator.dart';

void main() {
  // Входные данные для калькулятора НОД и НОК
  int a = 156, b = 65;

  // 1. Вычисление НОД и НОК
  var calculator = DelimetersCalculator();
  print('НОД чисел $a и $b = ${calculator.gcd(a, b)}');
  print('НОК чисел $a и $b = ${calculator.lcm(a, b)}');

  // 1. Вычисление простых множителей числа
  print('Число $a ${calculator.primeNumber(a)}');

  String bCode = calculator.transferDown(a);
  // 2. Преобразование числа из десятичной системы в двоичную
  print('Число $a в двоичной системе = $bCode');

  // 2. Преобразование числа из двоичной системы в десятичную
  print('Перевод обратно в десятичную систему = ${calculator.transferUp(bCode)}');
}