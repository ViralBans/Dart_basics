import 'functions/custom_functions.dart';
import 'functions/delimeters_calculator.dart';
import 'functions/point.dart';
import 'functions/user.dart';

void main() {
  // Входные данные
  int a = 156, b = 65, n = 3;
  double numb = 23;
  String str = 'Something string with numbers 12. And yet number 5 or 8, 12 and 90.';
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
  print('1.1. НОД чисел $a и $b = ${calculator.gcd(a, b)}');
  print('1.2. НОК чисел $a и $b = ${calculator.lcm(a, b)}');

  // 1. Вычисление простых множителей числа
  print('1.3. Число $a ${calculator.primeNumber(a)}');

  // 2. Преобразование числа из десятичной системы в двоичную
  String bCode = calculator.transferDown(a);
  print('2.1. Число $a в двоичной системе = $bCode');

  // 2. Преобразование числа из двоичной системы в десятичную
  print('2.2. Перевод обратно в десятичную систему = ${calculator.transferUp(bCode)}');

  // 3. Поиск и возврат чисел из передаваемой строки
  final intInStr = RegExp(r'\d+');
  print('3. В строке \'str\' находятся числа - ${intInStr.allMatches(str).map((m) => m.group(0))}');

  // 4. Поиск и подсчет дубликатов списка
  var cf = CustomFunctions();
  print('4. В коллекции names следующие результаты: ${cf.checkNames(names)}');

  // 5. Вычленение цифр из коллекции данных
  print('5. В коллекции data содержатся цифры: ${cf.countDigits(data)}');

  // 6. Вычисление расстояния между точками в трёхмерном пространстве
  var p1 = Point(5, 2, 6);
  var p2 = Point(1, 2, 0);
  var p3 = Point(3, 0, 3);
  var d1 = p1.distanceTo(p2); // расстояние от точки 1 до точки 2
  var d2 = p1.distanceTo(p3); // расстояние от точки 1 до точки 3
  var d3 = p2.distanceTo(p3); // расстояние от точки 2 до точки 3

  print('6.1. Расстояние между точками p1 и p2 = $d1');

  // 6. Вычисление площади треугольника
  print('6.2. Площадь треугольника, состоящего из точек p1, p2 и p3 = ${Point.squareTriangle(d1, d2, d3)}');

  // 7. Нахождение корня квадратного n-степени из числа
  try {
    print('7. Корень степени $n из числа $numb = ${a.nSqrt(numb, n)}');
  } on Exception catch (e) {
    print(e);
  }

  // 8. Отображение списка почтовых ящиков пользователей
  var um = UserManager();
  var au = AdminUser();
  print('8. В списке находятся следующие адреса (администраторские скрыты):');
  um.showEmails(au);
}

// Extension для нахождения корня n-степени из числа
extension on num {
  cPow(double number, int pow) {
    double _result = 1;
    for (int i = 0; i < pow; i++) {
      _result *= number;
    }
    return _result;
  }

  nSqrt(double number, int n, {double eps = 0.0001}) {
    var x0 = number / n;
    var x1 = (1 / n) * ((n - 1) * x0 + number / cPow(x0, n - 1));

    while ((x1 - x0).abs() > eps) {
      x0 = x1;
      x1 = (1 / n) * ((n - 1) * x0 + number / cPow(x0, n - 1));
    }

    return x1;
  }
}
