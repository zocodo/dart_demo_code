// (int a = 10),参数带默认值的，调用时可以不传，使用默认值
// (int? a), 参数带？号的，调用时可不传，默认为 null

void main() {
  enableFlags({bool? bold, required bool hidden}) {
    print(bold);
    print(hidden);
  }

  ;
  enableFlags(hidden: false, bold: true);

  add({required int x, int y = 1, int z = 0}) {
    print(x + y + z);
  }

  add(x: 18);
  add(x: 18, y: 2, z: 10);

  add2(int x, [int y = 0, int z = 0]) {
    int res = x + y + z;
    print(res);
  }

  add2(18);
  add2(18, 12);
  add2(18, 12, 15);

  num add3(num x, num y) => x + y;
  print(add3(3.2, 2.3));


}
