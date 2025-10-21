import 'dart:io';
import 'dart:isolate';

void main() {
  print("main isolate start");
  create_isolate();
  print("main isolate stop");
}

// 创建一个新的 isolate
create_isolate() async {
  ReceivePort rp = new ReceivePort();
  SendPort port1 = rp.sendPort;

  Isolate newIsolate = await Isolate.spawn(doWork, port1);

  late SendPort port2;
  rp.listen((message) {
    print("来自 doWork 的 message: $message");
    if (message[0] == 0) {
      port2 = message[1];
    } else if (port2 != null) {
      port2.send([1, "这条信息是 main isolate 发送的"]);
    }
  });

  // 可以在适当的时候，调用以下方法杀死创建的 isolate
  // newIsolate.kill(priority: Isolate.immediate);
}

void doWork(SendPort port1) {
  print("new isolate start");
  ReceivePort rp2 = new ReceivePort();
  SendPort port2 = rp2.sendPort;
  rp2.listen((message) {
    print('主线程来活：$message');
  });

  port1.send([0, port2]);
  sleep(Duration(seconds: 2));

  port1.send([1, '子线程吧任务完成了']);
  print('new isolate end');
}
