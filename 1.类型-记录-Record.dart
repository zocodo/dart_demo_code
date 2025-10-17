String readThermometer() {
  return "11111";
}

typedef ButtonItem = ({String label, void Function()? onPressed});

void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
  print(record.a);
  print(record.$1);

  (int, int) swap((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  (int, int) test = swap((1000, 999));
  print(test);

  ({int a, bool b}) cc;
  cc = (a: 123, b: false);
  print(cc);

  print(record.$1);
  print(record.a);
  print(record.b);
  print(record.$2);

  final json = <String, dynamic>{'name': 'Dash', 'age': 10, 'color': 'blue'};

  (String name, int age) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  var (name, age) = userInfo(json);
  print("name：${name}，age：${age}");

  final List<ButtonItem> buttons = [
    (label: 'string', onPressed: () => print('')),
    (label: 'string', onPressed: () => print('')),
  ];

  Set<String> colors = {'red', 'green', 'blue'};
  print(colors);
  print(colors.elementAt(0));
  print(colors.elementAt(1));
  print(colors.elementAt(2));
  print(colors.contains('iodine'));

  List<String> colorsList = colors.toList();
  print(colorsList);
  print(colorsList[0]);
}
