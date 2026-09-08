double average(List<int> grades) {
  if (grades.isEmpty) return 0;
  int sum = 0;
  for (var grade in grades) {
    sum += grade;
  }
  return sum / grades.length;
}

int maxGrade(List<int> grades) {
  int max = grades[0];
  for (var grade in grades) {
    if (grade > max) max = grade;
  }
  return max;
}

int minGrade(List<int> grades) {
  int min = grades[0];
  for (var grade in grades) {
    if (grade < min) min = grade;
  }
  return min;
}

String letterGrade(double avg) {
  if (avg >= 4.5) return 'Отлично';
  if (avg >= 3.5) return 'Хорошо';
  if (avg >= 2.5) return 'Удовлетворительно';
  return 'Неудовлетворительно';
}

void printStats({required String name, required List<int> grades}) {
  double avg = average(grades);
  print(' $name');
  print('Оценки: $grades');
  print('Среднее: ${avg.toStringAsFixed(2)}');
  print('Макс: ${maxGrade(grades)}, Мин: ${minGrade(grades)}');
  print('Итог: ${letterGrade(avg)}');
  print('');
}

void main() {
  Map<String, List<int>> students = {
    'Артём Иванов': [5, 4, 5, 3, 4, 5],
    'Мария Петрова': [4, 4, 5, 5, 4, 5],
    'Иван Сидоров': [3, 3, 4, 2, 3, 4],
  };
  print('Анализатор оценок');
  
  students.forEach((name, grades) {
    printStats(name: name, grades: grades);
  });
  
  print('Общая статистика');
  int totalStudents = students.length;
  print('Всего студентов: $totalStudents');
  
  int excellentCount = 0;
  students.forEach((name, grades) {
    if (average(grades) >= 4.5) excellentCount++;
  });
  print('Отличников: $excellentCount из $totalStudents');
}