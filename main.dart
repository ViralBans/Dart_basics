import 'functions/custom_functions.dart';
import 'functions/delimeters_calculator.dart';

void main() {
  // Входные данные
  int a = 156, b = 65;
  String str = 'Something string with numbers 12. And yet number 5 or 8, 12 and 90.';
  List<String> names = ['Alex', 'Sergey', 'Pavel', 'Dmitry', 'Alina', 'Alex', 'Sergey', 'Sergey', 'Fedor', 'Pavel'];

  // 1. Вычисление НОД и НОК
  var calculator = DelimetersCalculator();
  print('НОД чисел $a и $b = ${calculator.gcd(a, b)}');
  print('НОК чисел $a и $b = ${calculator.lcm(a, b)}');

  // 1. Вычисление простых множителей числа
  print('Число $a ${calculator.primeNumber(a)}');

  // 2. Преобразование числа из десятичной системы в двоичную
  String bCode = calculator.transferDown(a);
  print('Число $a в двоичной системе = $bCode');

  // 2. Преобразование числа из двоичной системы в десятичную
  print('Перевод обратно в десятичную систему = ${calculator.transferUp(bCode)}');

  // 3. Поиск и возврат чисел из передаваемой строки
  final intInStr = RegExp(r'\d+');
  print('В строке \'str\' находятся числа - ${intInStr.allMatches(str).map((m) => m.group(0))}');

  // 4. Поиск и подсчет дубликатов списка
  var cf = CustomFunctions();
  print('В коллекции names следующие результаты: ${cf.checkNames(names)}');
}