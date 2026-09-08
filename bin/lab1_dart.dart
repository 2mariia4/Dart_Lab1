import 'package:lab1_dart/lab1_dart.dart' as lab1_dart;
void main() {
  List<int> numbers = [3, 1, 4, 1, 5, 9];
  numbers.sort((a, b) => b - a);
  print('Отсортированные числа: $numbers');

  List<String> names = ['Артём', 'Мария', 'Иван'];
  List<String> upperNames = names.map((name) => name.toUpperCase()).toList();
  print('Верхний регистр: $upperNames');

  List<String> longNames = names.where((name) => name.length > 4).toList();
  print('Имена длиннее 4 букв: $longNames');

  names.forEach((name) {
    print('Привет, $name!');
  });
}