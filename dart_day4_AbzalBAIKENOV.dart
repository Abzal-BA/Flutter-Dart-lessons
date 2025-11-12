// A1. Сумма 1..n (for loop)
int sumToN(int n) {
  if (n <= 0) return 0;
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

// A2. Сумма элементов списка (один проход, без reduce)
int sumList(List<int> list) {
  int sum = 0;
  for (int v in list) {
    sum += v;
  }
  return sum;
}

// A3. Минимум и максимум (один проход, ошибка для пустого списка)
List<int> minMax(List<int> list) {
  if (list.isEmpty) throw ArgumentError('Список пуст');
  int mn = list[0];
  int mx = list[0];
  for (int i = 1; i < list.length; i++) {
    int v = list[i];
    if (v < mn) mn = v;
    if (v > mx) mx = v;
  }
  return [mn, mx];
}

// A4. Количество чётных (линейный проход)
int countEven(List<int> list) {
  int cnt = 0;
  for (int v in list) {
    if (v % 2 == 0) cnt++;
  }
  return cnt;
}

// A5. Разворот списка (без .reversed, используя индексы и add)
List<T> reverseList<T>(List<T> list) {
  List<T> out = [];
  for (int i = list.length - 1; i >= 0; i--) {
    out.add(list[i]);
  }
  return out;
}

// A6. Фильтр "неотрицательные"
List<int> filterNonNegative(List<int> list) {
  List<int> out = [];
  for (int v in list) {
    if (v >= 0) out.add(v);
  }
  return out;
}

// A7. Удалить все вхождения x
List<int> removeAllOccurrences(List<int> list, int x) {
  List<int> out = [];
  for (int v in list) {
    if (v != x) out.add(v);
  }
  return out;
}

// A8. Кол-во уникальных элементов (через Set)
int countUnique(List<int> list) {
  return Set<int>.from(list).length;
}

// A9. Удалить дубликаты, сохранив порядок первой встречи
List<int> removeDuplicatesPreserveOrder(List<int> list) {
  List<int> out = [];
  Set<int> seen = {};
  for (int v in list) {
    if (!seen.contains(v)) {
      seen.add(v);
      out.add(v);
    }
  }
  return out;
}

void main() {
  print('=== A1. Сумма 1..n ===');
  var testsA1 = [[5, 15], [1, 1], [0, 0]];
  for (var test in testsA1) {
    print('${test[0]} → ${sumToN(test[0])} (ожидается ${test[1]})');
  }

  print('\n=== A2. Сумма элементов списка ===');
  print('[1,2,3] → ${sumList([1,2,3])} (ожидается 6)');
  print('[] → ${sumList([])} (ожидается 0)');

  print('\n=== A3. Минимум и максимум ===');
  print('[3,1,7] → ${minMax([3,1,7])} (ожидается [1,7])');
  print('[5] → ${minMax([5])} (ожидается [5,5])');

  print('\n=== A4. Количество чётных ===');
  print('[1,2,4,5] → ${countEven([1,2,4,5])} (ожидается 2)');
  print('[] → ${countEven([])} (ожидается 0)');

  print('\n=== A5. Разворот списка ===');
  print('[1,2,3] → ${reverseList([1,2,3])} (ожидается [3,2,1])');
  print('[] → ${reverseList([])} (ожидается [])');

  print('\n=== A6. Фильтр "неотрицательные" ===');
  print('[-2,0,3] → ${filterNonNegative([-2,0,3])} (ожидается [0,3])');
  print('[-1,-5] → ${filterNonNegative([-1,-5])} (ожидается [])');

  print('\n=== A7. Удалить все вхождения x ===');
  print('[1,2,2,3], x=2 → ${removeAllOccurrences([1,2,2,3], 2)} (ожидается [1,3])');
  print('[2,2], x=2 → ${removeAllOccurrences([2,2], 2)} (ожидается [])');

  print('\n=== A8. Кол-во уникальных элементов ===');
  print('[1,1,2] → ${countUnique([1,1,2])} (ожидается 2)');
  print('[] → ${countUnique([])} (ожидается 0)');
  print('[5,5,5] → ${countUnique([5,5,5])} (ожидается 1)');

  print('\n=== A9. Удалить дубликаты ===');
  print('[1,2,1,3,2] → ${removeDuplicatesPreserveOrder([1,2,1,3,2])} (ожидается [1,2,3])');
  print('[4,4,4] → ${removeDuplicatesPreserveOrder([4,4,4])} (ожидается [4])');
}
