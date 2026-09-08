// Подсчёт всей суммы
double calculateTotal(List<double> items) {
  double sum = 0;
  for (var item in items) {
    sum += item;
  }
  return sum;
}

//Среднее значение
double calculateAverage(List<double> items) {
  if (items.isEmpty) return 0;
  double total = calculateTotal(items);
  return total / items.length;
}

//Максимальное значение
double findMax(List<double> items) {
  if (items.isEmpty) return 0;
  double max = items[0];
  for (var item in items) {
    if (item > max) {
      max = item;
    }
  }
  return max;
}
//Минимальное значение
double findMin(List<double> items) {
  if (items.isEmpty) return 0;
  double min = items[0];
  for (var item in items) {
    if (item < min) {
      min = item;
    }
  }
  return min;
}

//Оценка состояния банка
String getBankStatus(double profit) {
  if (profit > 100000) return 'Отличная прибыль';
  if (profit > 50000) return 'Хорошая прибыль';
  if (profit > 0) return 'Небольшая прибыль';
  if (profit == 0) return 'Нет прибыли';
  return 'Убыток!';
}

//Статистика
void printBankStats({
  required String bankName,
  required List<double> incomes,
  required List<double> expenses,
}) {
//Сумма
  double totalIncome = calculateTotal(incomes);
  double totalExpense = calculateTotal(expenses);
  double profit = totalIncome - totalExpense;
  
//Информация
  print('Банк: $bankName');
  print('═' * 30);
  
  print('Доходы:');
  print('  Общая сумма: ${totalIncome.toStringAsFixed(2)} ₽');
  print('  Средний доход: ${calculateAverage(incomes).toStringAsFixed(2)} ₽');
  print('  Максимальный доход: ${findMax(incomes).toStringAsFixed(2)} ₽');
  print('  Минимальный доход: ${findMin(incomes).toStringAsFixed(2)} ₽');
  
  print('Расходы:');
  print('  Общая сумма: ${totalExpense.toStringAsFixed(2)} ₽');
  print('  Средний расход: ${calculateAverage(expenses).toStringAsFixed(2)} ₽');
  print('  Максимальный расход: ${findMax(expenses).toStringAsFixed(2)} ₽');
  print('  Минимальный расход: ${findMin(expenses).toStringAsFixed(2)} ₽');
  
  print('Прибыль: ${profit.toStringAsFixed(2)} ₽');
  print('Статус: ${getBankStatus(profit)}');
  print('═' * 30);
  print('');
}

void main() {
  print('БАНКОВСКИЙ АНАЛИЗАТОР');
  print('');
  
  //Данные банка
  List<double> incomeList = [
    45000.50,  //проценты по кредитам
    23000.00,  //комиссии за обслуживание
    12000.00,  //платные услуги
    5000.00,   //штрафы
    15000.00   //другие доходы
  ];
  
  //Расходы
  List<double> expenseList = [
    32000.00,  //зарплаты сотрудников
    15000.00,  //аренда офиса
    8000.00,   //реклама
    10000.00,  //налоги
    5000.00    //обслуживание
  ];
  
  //Статистика
  printBankStats(
    bankName: 'Т-Банк',
    incomes: incomeList,
    expenses: expenseList,
  );
  
  //Анализ других категорий

  //Самый большой доход
  double maxIncome = findMax(incomeList);
  print('Самый крупный доход: ${maxIncome.toStringAsFixed(2)} ₽');
  
  //Самый большой расход
  double maxExpense = findMax(expenseList);
  print('Самый крупный расход: ${maxExpense.toStringAsFixed(2)} ₽');
  
  // Считаем сколько статей дохода
  print('Всего источников дохода: ${incomeList.length}');
  print('Всего статей расхода: ${expenseList.length}');
  
  print('');
  print('Анализ завершён!');
}