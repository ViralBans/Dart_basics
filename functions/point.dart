import 'dart:math';

class Point {
  late final double x, y, z;

  Point(this.x, this.y, this.z);

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.vector() {
    return Point(1, 1, 1);
  }

  // Функция для рассчёта расстояния между точками в 3D пространстве
  distanceTo(Point p2) {
    return (sqrt(pow((p2.x - this.x), 2) +
        pow((p2.y - this.y), 2) +
        pow((p2.z - this.z), 2)));
  }

  // Функция для нахождения площади треугольника в 3D пространстве
  static squareTriangle(double d1, double d2, double d3) {
    var _p = (d1 + d2 + d3) / 2; // полупериметр
    var _s = sqrt(_p * (_p - d1) * (_p - d2) * (_p - d3));
    return _s;
  }
}
