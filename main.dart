import 'functions/custom_functions.dart';
import 'functions/delimeters_calculator.dart';
import 'functions/point.dart';

void main() {
  // Входные данные
  int a = 156, b = 65;
  String str =
      'Something string with numbers 12. And yet number 5 or 8, 12 and 90.';
  List<String> names = [
    'Alex',
    'Sergey',
    'Pavel',
    'Dmitry',
    'Alina',
    'Alex',
    'Sergey',
    'Sergey',
    'Fedor',
    'Pavel'
  ];
  List<String> data = [
    'One',
    'two',
    'Dog',
    'Cat',
    'Monday',
    'Nine',
    'Zebra',
    'Zero'
  ];

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
  print(
      'Перевод обратно в десятичную систему = ${calculator.transferUp(bCode)}');

  // 3. Поиск и возврат чисел из передаваемой строки
  final intInStr = RegExp(r'\d+');
  print(
      'В строке \'str\' находятся числа - ${intInStr.allMatches(str).map((m) => m.group(0))}');

  // 4. Поиск и подсчет дубликатов списка
  var cf = CustomFunctions();
  print('В коллекции names следующие результаты: ${cf.checkNames(names)}');

  // 5. Вычленение цифр из коллекции данных
  print('В коллекции data содержатся цифры: ${cf.countDigits(data)}');

  // 6. Вычисление расстояния между точками в трёхмерном пространстве
  var p1 = Point(5, 2, 6);
  var p2 = Point(1, 2, 0);
  var p3 = Point(3, 0, 3);
  var d1 = p1.distanceTo(p2); // расстояние от точки 1 до точки 2
  var d2 = p1.distanceTo(p3); // расстояние от точки 1 до точки 3
  var d3 = p2.distanceTo(p3); // расстояние от точки 2 до точки 3

  print('Расстояние между точками p1 и p2 = $d1');

  // 6. Вычисление площади треугольника
  print('Площадь треугольника, состоящего из точек p1, p2 и p3 = ${Point.squareTriangle(d1, d2, d3)}');
}
