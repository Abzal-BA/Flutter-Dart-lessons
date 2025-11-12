// A1. Sum of  1..n (for loop)
int sumToN(int n) {
  if (n <= 0) return 0;
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

// A2. Sum from list (one pass, without reduce)
int sumList(List<int> list) {
  int sum = 0;
  for (int v in list) {
    sum += v;
  }
  return sum;
}

// A3. Minimum and maximum (one pass, error for empty list)
List<int> minMax(List<int> list) {
  if (list.isEmpty) throw ArgumentError('List is empty');
  int mn = list[0];
  int mx = list[0];
  for (int i = 1; i < list.length; i++) {
    int v = list[i];
    if (v < mn) mn = v;
    if (v > mx) mx = v;
  }
  return [mn, mx];
}

// A4. Count of even numbers (linear pass)
int countEven(List<int> list) {
  int cnt = 0;
  for (int v in list) {
    if (v % 2 == 0) cnt++;
  }
  return cnt;
}

// A5. Reverse list (without .reversed, using indices and add)
List<T> reverseList<T>(List<T> list) {
  List<T> out = [];
  for (int i = list.length - 1; i >= 0; i--) {
    out.add(list[i]);
  }
  return out;
}

// A6. Filter "non-negative"
List<int> filterNonNegative(List<int> list) {
  List<int> out = [];
  for (int v in list) {
    if (v >= 0) out.add(v);
  }
  return out;
}

// A7. Remove all occurrences of x
List<int> removeAllOccurrences(List<int> list, int x) {
  List<int> out = [];
  for (int v in list) {
    if (v != x) out.add(v);
  }
  return out;
}

// A8. Count of unique elements (via Set)
int countUnique(List<int> list) {
  return Set<int>.from(list).length;
}

// A9. Remove duplicates, preserving order of first occurrence
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
  print('=== A1. Sum 1..n ===');
  var testsA1 = [[5, 15], [1, 1], [0, 0]];
  for (var test in testsA1) {
    print('$${test[0]} → $${sumToN(test[0])} (expected $${test[1]})');
  }

  print('\n=== A2. Sum of list elements ===');
  print('[1,2,3] → $${sumList([1,2,3])} (expected 6)');
  print('[] → $${sumList([])} (expected 0)');

  print('\n=== A3. Minimum and maximum ===');
  print('[3,1,7] → $${minMax([3,1,7])} (expected [1,7])');
  print('[5] → $${minMax([5])} (expected [5,5])');

  print('\n=== A4. Count of even numbers ===');
  print('[1,2,4,5] → $${countEven([1,2,4,5])} (expected 2)');
  print('[] → $${countEven([])} (expected 0)');

  print('\n=== A5. Reverse list ===');
  print('[1,2,3] → $${reverseList([1,2,3])} (expected [3,2,1])');
  print('[] → $${reverseList([])} (expected [])');

  print('\n=== A6. Filter "non-negative" ===');
  print('[-2,0,3] → $${filterNonNegative([-2,0,3])} (expected [0,3])');
  print('[-1,-5] → $${filterNonNegative([-1,-5])} (expected [])');

  print('\n=== A7. Remove all occurrences of x ===');
  print('[1,2,2,3], x=2 → $${removeAllOccurrences([1,2,2,3], 2)} (expected [1,3])');
  print('[2,2], x=2 → $${removeAllOccurrences([2,2], 2)} (expected [])');

  print('\n=== A8. Count of unique elements ===');
  print('[1,1,2] → $${countUnique([1,1,2])} (expected 2)');
  print('[] → $${countUnique([])} (expected 0)');
  print('[5,5,5] → $${countUnique([5,5,5])} (expected 1)');

  print('\n=== A9. Remove duplicates ===');
  print('[1,2,1,3,2] → $${removeDuplicatesPreserveOrder([1,2,1,3,2])} (expected [1,2,3])');
  print('[4,4,4] → $${removeDuplicatesPreserveOrder([4,4,4])} (expected [4])');
}
