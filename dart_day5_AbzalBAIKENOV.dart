void main() {
  // 1. Print only even numbers
  print("1. Even numbers:");
  List<int> numbers = [2, 5, 8, 11, 14];
  List<int> evenNumbers = numbers.where((n) => n % 2 == 0).toList();
  print("Original list: $numbers");
  print("Even numbers: $evenNumbers");
  print("");

  // 2. Multiply each element by 3 using map()
  print("2. Multiplication by 3:");
  List<int> multipliedBy3 = numbers.map((n) => n * 3).toList();
  print("Original list: $numbers");
  print("Multiplied by 3: $multipliedBy3");
  print("");

  // 3. Function that returns only values greater than 10
  print("3. Values greater than 10:");
  List<int> greaterThan10 = filterGreaterThan10(numbers);
  print("Original list: $numbers");
  print("Greater than 10: $greaterThan10");
  print("");

  // 4. Add field to student object
  print("4. Adding field to Map:");
  Map<String, dynamic> student = {'name': 'Aruzhan', 'score': 90};
  print("Before: $student");
  student['grade'] = 'A';
  print("After: $student");
  print("");

  // 5. List of students, print names of those with score > 80
  print("5. Students with score > 80:");
  List<Map<String, dynamic>> students = [
    {'name': 'Aruzhan', 'score': 90},
    {'name': 'Olzhas', 'score': 75},
    {'name': 'Asel', 'score': 85},
    {'name': 'Daniyar', 'score': 95},
    {'name': 'Aigerim', 'score': 70},
  ];
  
  List<String> topStudents = students
      .where((student) => student['score'] > 80)
      .map((student) => student['name'] as String)
      .toList();
  print("Students with score > 80: $topStudents");
  print("");

  // 6. Print all keys and values from Map using forEach()
  print("6. Map keys and values:");
  Map<String, int> scores = {
    'Mathematics': 95,
    'Physics': 88,
    'Chemistry': 92,
    'History': 85
  };
  scores.forEach((key, value) {
    print("  $key: $value");
  });
  print("");

  // 7. Convert Map to list of keys
  print("7. List of keys from Map:");
  List<String> keysList = scores.keys.toList();
  print("Keys: $keysList");
  print("");

  // 8. Create Map from two lists (keys and values)
  print("8. Creating Map from lists:");
  List<String> keys = ['apple', 'banana', 'orange'];
  List<int> values = [50, 30, 45];
  Map<String, int> fruitsMap = Map.fromIterables(keys, values);
  print("Keys: $keys");
  print("Values: $values");
  print("Created Map: $fruitsMap");
  print("");

  // 9. Remove element by key from Map
  print("9. Removing element from Map:");
  Map<String, int> inventory = {
    'bread': 10,
    'milk': 5,
    'eggs': 20
  };
  print("Before removal: $inventory");
  inventory.remove('milk');
  print("After removing 'milk': $inventory");
  print("");

  // 10. Check key and add with default value
  print("10. Checking and adding key:");
  Map<String, int> cart = {
    'item1': 2,
    'item2': 5
  };
  print("Initial cart: $cart");

  String keyToCheck = 'item3';
  if (!cart.containsKey(keyToCheck)) {
    cart[keyToCheck] = 1; // default value
    print("Key '$keyToCheck' was missing, added with value 1");
  } else {
    print("Key '$keyToCheck' already exists");
  }
  print("Final cart: $cart");
  print("");

  // Alternative method with putIfAbsent
  print("10a. Using putIfAbsent:");
  Map<String, int> cart2 = {
    'item1': 2,
    'item2': 5
  };
  print("Initial cart: $cart2");
  cart2.putIfAbsent('item4', () => 1);
  print("After putIfAbsent('item4'): $cart2");
}

// 3. Function to filter values greater than 10
List<int> filterGreaterThan10(List<int> list) {
  return list.where((n) => n > 10).toList();
}
