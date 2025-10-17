class Box<T> {
  T value;

  Box(this.value);

  void printValue() {
    print('Box contanins: ${this.value}');
  }
}

(T, K) identity<T, K>(T value, K value2) => (value, value2);

void main() {

  var intBox = Box<int>(123);
  var strBox = Box<String>('hello');
  intBox.printValue();
  strBox.printValue();

  print(identity<int, String>(321, '123'));
  print(identity<String, bool>('hi', false));
  print(identity<String, List<int>>('nice', [1, 3, 5]));
}
