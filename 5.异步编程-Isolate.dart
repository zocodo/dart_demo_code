import 'dart:isolate';


void main() {
  print("main isolate start");
  create_isolate();
  print("main isolate stop");
}

// 创建一个新的 isolate
create_isolate() async{
  ReceivePort rp = new ReceivePort();
  SendPort port1 = rp.sendPort;

  Isolate newIsolate = await Isolate.spawnUri(new Uri(path: "./other_task.dart"), ["hello, isolate", "this is args"], port1);

  late SendPort port2;
  rp.listen((message){
    print("来自 other_task 的 message: $message");
    if (message[0] == 0){
      port2 = message[1];
    }else if (port2 != null){
      port2.send([1,"这条信息是 main isolate 发送的"]);
    }
  });

  // 可以在适当的时候，调用以下方法杀死创建的 isolate
  // newIsolate.kill(priority: Isolate.immediate);
}