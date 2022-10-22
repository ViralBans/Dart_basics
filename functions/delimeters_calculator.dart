class DelimetersCalculator {

  // Функция для определения НОД
  int gcd(int a, int b) => a.gcd(b);

  // Функция для определения НОК
  int lcm(int a, int b) => (a * b) ~/ gcd(a, b);

  // Проверка числа
  bool isSimple(int a) {
    List<int> numbers = [];

    for (var i = 1; i <= a; i++) {
      if (a % i == 0) {
        numbers.add(i);
      }
    }

    return numbers.length == 2;
  }

  // Функция для разбиения числа на простые множители
  primeNumber(int a) {

    if (isSimple(a)) {
      return '- простое число';
    }

    a = a.abs();
    var div = 2;
    List<int> _result = [];

    while (a > 1) {
      while (a % div == 0) {

        if (isSimple(div)) {
          _result.add(div);
          a = a ~/ div;
        }
      }

      if (div == 2)
        div++;
      else
        div += 2;
    }

    return 'состоит из простых множителей - ${_result.toString()}';
  }

  // Функция для преобразования числа из десятичной системы в двоичную
  String transferDown(int code) {
    return code.toRadixString(2);
  }

  // Функция для преобразования числа из двоичной системы в десятичную
  int transferUp(String code) {
    return int.parse(code, radix: 2);
  }
}