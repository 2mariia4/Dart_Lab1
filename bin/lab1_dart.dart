import 'package:lab1_dart/lab1_dart.dart' as lab1_dart;
void main() {
  // int score = 85;
  // String grade;
  // if (score >= 90) {
  //   grade = 'A';
  // } else if (score >= 75) {
  //   grade = 'B';
  // } else {
  //   grade = 'C';
  // }
  // print(grade);

  // String result = score >= 60 ? 'Сдал' : 'Не сдал';
  // print(result);

  // for (int i = 0; i < 5; i++) {
  //   print(i);
  // }

  // List<String> fruits3 = ['яблоко', 'банан', 'груша'];
  // for (var fruit in fruits3) {
  //   print(fruit);
  // }

  // int n = 0;
  // while (n < 3) {
  //   print(n);
  //   n++;
  // }

  String day = 'Сб';
  switch (day) {
    case 'Сб':
    case 'Вс':
      print('Выходной');
      break;
    case 'Пн':
      print('Начало недели');
      break;
    default:
      print('Рабочий день');
  }
}