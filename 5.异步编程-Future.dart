import 'dart:async';
import 'dart:io';

void main() async {
  print("main start");

  // then
  Future fut = new Future.value(18);
  await fut.then((res) {
    print(res);
  });

  await new Future(() {
        print('async task');
      })
      .then((res) {
        print('async task complete');
      })
      .then((res) {
        print('async task after');
      })
      .catchError((e) {
        print(e);
      });

  await Future.delayed(const Duration(seconds: 2));
  print('main stop');
}
