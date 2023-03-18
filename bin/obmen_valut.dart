import 'dart:io';

void main() {
  text();
  fx();
}

dynamic text() {
  print('Курс на сегодня');
  print('Доллар США:87.42 ');
  print('Евро: 93.12');
  print('Рубль: 1.1384');
  print('Тенге: 0.1897');
}

fx() {
  print("1) Xотите обменять другую валюту на сом");
  print("2) Xотите обменять сом на другую валюту");
  print("Ввод:");
  int? c = int.parse(stdin.readLineSync()!);
  if (c == 1) {
    selectCurrencyOne();
  } else if (c == 2) {
    selectCurrencyTwo();
  }
}

selectCurrencyOne() {
  print('EUR');
  print('USD');
  print('RUB');
  print('KZT');
  print("Выберите валюту: ");
  var arr = stdin.readLineSync();
  if (arr == 'EUR') {
    EUR();
  } else if (arr == 'USD') {
    USD();
  } else if (arr == 'RUB') {
    RUB();
  } else if (arr == 'KZT') {
    KZT();
  } else {
    print('error');
  }
}

selectCurrencyTwo() {
  print("Сколько сомов вы хотите обменять?");
  print('Ввод:');
  int? kgs = int.parse(stdin.readLineSync()!);
  print('На какую волюту хотите обменять?');
  print('EUR');
  print('USD');
  print('RUB');
  print('KZT');
  print("Выберите валюту: ");
  var arr = stdin.readLineSync();
  if (arr == 'EUR') {
    double one = 93.12;
    var a = kgs / one;
    print('обмен:$kgs сом = $a EUR');
  } else if (arr == 'USD') {
    double one = 87.42;
    var a = kgs / one;
    print('обмен:$kgs сом = $a USD');
  } else if (arr == 'RUB') {
    double one = 1.1384;
    var a = kgs / one;
    print('обмен:$kgs сом = $a RUB');
  } else if (arr == 'KZT') {
    double one = 0.1897;
    var a = kgs / one;
    print('обмен:$kgs сом = $a KZT');
  } else {
    print('error');
  }
}

//-- обмен другие волюты на сом --//
EUR() {
  print("Сколько EUR вы хотите купить?");
  print('Ввод:');
  double one = 93.12;
  int? sum = int.parse(stdin.readLineSync()!);
  var arr = sum * one;
  print('обмен: $arr сом на $sum EUR');
}

USD() {
  print("Сколько USD вы хотите купить?");
  print('Ввод:');
  double one = 87.42;
  int? sum = int.parse(stdin.readLineSync()!);
  var arr = sum * one;
  print('обмен: $arr сом на $sum USD');
}

RUB() {
  print("Сколько RUB вы хотите купить?");
  print('Ввод:');
  double one = 1.1384;
  int? sum = int.parse(stdin.readLineSync()!);
  var arr = sum * one;
  print('обмен: $arr сом на $sum RUB');
}

KZT() {
  print("Сколько KZT вы хотите купить?");
  print('Ввод:');
  double one = 0.1897;
  int? sum = int.parse(stdin.readLineSync()!);
  var arr = sum * one;
  print('обмен: $arr сом на $sum KZT');
}
