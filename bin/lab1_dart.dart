void main() {
  // String name = 'Артём';
  // int age = 20;
  // double height = 1.75;
  // bool isStudent = true;

  // print(name);
  // print(age);
  // print(height);
  // print(isStudent);

  // print('Привет, $name! Тебе $age лет.');
  // print('Через 5 лет тебе будет ${age + 5} лет.');
  // print("Рост: ${height} м, студент: $isStudent");

  // var score = 95;
  // var language = 'Dart';
  // print('$language: $score');

  // final String language = 'Dart';
  // final int releaseYear = 2011;
  // print('$language создан в $releaseYear');

  // const String appName = 'Lab1';
  // final int startYear = 2026;
  // print('$appName started in $startYear');

  // String name = 'Артём';
  // String? city = null;
  // if (city != null){
  //   print(city.toLowerCase());
  // }
  // print(city?.toUpperCase());
  // String? nickname = null;
  // String display = nickname ?? 'Аноним';
  // print(display);

  List<String> fruits = ['яблоко', 'банан', 'груша'];
  fruits.add('апельсин');
  print(fruits[0]);
  print(fruits.length);

  Map<String, dynamic> person = {'name': 'Артём', 'age': 20};
  print(person['name']);
  person['city'] = 'Волжский';
  print(person);

  Set<int> ids = {1, 2, 3, 2, 1};
  print(ids);
  print(ids.length);

  List<String> fruits2 = ['яблоко', 'банан', 'груша'];
  for (var fruit in fruits2){
    print(fruit);
  }
}