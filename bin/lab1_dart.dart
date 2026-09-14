void main(){
  List<int> numbers = [3, 1, 4, 1, 5, 9];
  numbers.sort((a, b) => b - a);
  print(numbers);

  List<String> names = ['Артём', 'Мария', 'Иван'];

  List<String> upper = names.map((name) => name.toUpperCase()).toList();
  print(upper);

  List<String> longNames = names.where((name) => name.length > 4).toList();
  print(longNames);
}