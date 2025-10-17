class People {
  void greet() {
    print('hello');
  }

  num add(num a, num b) {
    return a + b;
  }
}

class People2 {
  void greet1() {
    print('hello');
  }
}

// implements
// 和 abstract 区别是，父类有的方法，子类一定要重新实现。abstract 不可被实例化
// 和 extends 区别是，不能使用super调用父类的方法，也就是无法继承
class Student implements People, People2 {
  @override
  void greet() {
    print('hello, i`m Alice');
  }

  @override
  num add(num a, num b) {
    return a * a + b * b;
  }

  @override
  void greet1() {
    print('hello, i`m Alice111');
  }
}

void main() {}
