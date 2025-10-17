void main() {
  Set<String> halogens = {
    // 等同于 var halogens1 = <String>{};
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };

  print(halogens);

  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);

  print(elements);
  print(elements.length);

  final constantSet = {...?halogens};
  constantSet.add('测试');
  // constantSet = {'a','n', '3'};  // 错误，final只允许变量赋值一次
  print(constantSet);

  const constantSet1 = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  constantSet1.add('value'); // 错误，const 修饰不允许修改
  print(constantSet1);
}
