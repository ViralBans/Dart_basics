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


}