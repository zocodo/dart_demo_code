import 'dart:math';

// getter setter
class Person {
  late String name;
  late int age;

  Person(this.name, this.age);

  // 等同于
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  String get userName {
    return 'user:${this.name}';
  }

  set userName(String name) {
    this.name = name;
  }
}

// 操作符重置
class Point {
  int x;
  int y;

  Point(this.x, this.y);

  Point operator +(Point p) {
    return new Point(this.x + p.x, this.y + p.y);
  }

  Point operator -(Point p) {
    return new Point(this.x - p.x, this.y - p.y);
  }
}

// 类构造好事初始化final，final修饰的变量不能在构造函数内初始化
class Point2 {
  final int x;
  final int y;
  final double instance;

  Point2(x, y) : x = x, y = y, instance = sqrt(x * x + y * y) {
    print(this.x);
    print(this.y);
    print(this.instance);
  }
}

void main() {
  Person p = Person("张三", 18);
  print(p.userName);
  p.userName = '李四';
  print(p.userName);

  Point a1 = Point(3, 4);
  Point a2 = Point(4, 5);
  Point a3 = a2 - a1;
  Point a4 = a2 + a1;
  print('${a3.x}, ${a3.y}');
  print('${a4.x}, ${a4.y}');

  Point2 s = Point2(3, 4);
}
