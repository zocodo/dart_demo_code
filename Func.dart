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
