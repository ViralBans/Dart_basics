class DelimetersCalculator {

  // Функция определения НОД
  int gcd(int a, int b) {
    var _temp = a;

    if (a < b) {
      a = b;
      b = _temp;
    }
    return a.gcd(b);
  }

  // Функция определения НОК
  int lcm(int a, int b) => (a * b) ~/ gcd(a, b);
}
