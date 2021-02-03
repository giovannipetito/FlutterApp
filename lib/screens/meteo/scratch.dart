import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  task2();
  // await significa che result, per ricevere il valore di task3, deve aspettare
  // che task3 venga del tutto eseguito.
  String result = await task3();
  task4();
  task5(result);
}

void task1() {
  String result = 'Task 1 data';
  print('Task 1 complete');
}

// sleep è un metodo sincrono: solo dopo il completamento di task2, potrà essere
// eseguito task3.
void task2() {
  Duration duration = Duration(seconds: 3);
  sleep(duration);
  String result = 'Task 2 data';
  print('Task 2 complete');
}

// delayed è un metodo asincrono, ritarderà di 3 secondi il blocco di codice al
// suo interno, (nella callback), ma permetterà al metodo task4 di essere eseguito
// prima dello scadere dei 3 secondi.

// Future<String> significa task3 restituirà in futuro un risultato di tipo Stringa.
Future<String> task3() async {
  Duration duration = Duration(seconds: 3);
  String result;
  await Future.delayed(duration, () {
    result = 'Task 3 data';
    print('Task 3 complete');
  });
  return result;
}

void task4() {
  String result = 'Task 4 data';
  print('Task 4 complete');
}

void task5(String dataFromTask3) {
  String result = 'Task 5 data';
  print('Task 5 complete with $dataFromTask3');
}