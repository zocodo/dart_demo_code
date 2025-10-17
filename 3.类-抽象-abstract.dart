// 抽象类，继承的子类必须实现里面的抽象方法
abstract class Base {
  func1();

  func2();

  func3() {
    print('func3 有函数体，子类可选是否重写');
  }
}

class Test extends Base {
  @override
  func1() {
    print('实现了func1');
  }

  @override
  func2() {
    print('实现了func2');
  }
}

void main() {
  Test a = Test();
  a.func1();
  a.func2();
  a.func3();
}
