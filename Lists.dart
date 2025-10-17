// 类型 List，数组类型

void main() {
  List<int> list = [1, 2, 3];
  print(list.length);
  print(list[1]);
  print(list[1] == 2);

  list[1] = 1;
  print(list[1]);

  const List<int> constList = [1, 2, 3];
  // constList[0] = 10;  // 错误，const 标记静态变量，不可修改
  print(constList);

  List<int> list1 = [1, 3, 4];
  List<int> list2 = [0, ...?list1];

  print(list2);

  var list3;
  List list4 = [0, ...?list3];
  print(list4);

  List<int> listOfInts = [1, 2, 3];
  List<String> listOfStrings = [
    '#0',
    for(var i in listOfInts) '#$i'
  ];
  print(listOfStrings);
}
