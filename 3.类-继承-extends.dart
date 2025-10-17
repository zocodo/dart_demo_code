class Father1 {
  a() {
    print('Father1 a');
  }

  common() {
    print('我是你爸爸1');
  }
}

// mixin 相同的方法会被最后的mixin 覆盖；
class Son extends Father1 {
  @override
  common() {
    super.common();
    print('被son重写了父类的common');
  }
}

void main() {
  Son a = Son();
  a.common();
  a.a();
}
