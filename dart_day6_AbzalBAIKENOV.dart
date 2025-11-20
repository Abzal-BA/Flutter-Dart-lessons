void main() {
  print("=== HOMEWORK DAY 6 ===\n");

  // Task 1: Function that returns full name
  print("1. Full Name:");
  String fullName = getFullName("Abzal", "BAIKENOV");
  print("   $fullName\n");

  // Task 2: Arrow function to check if number is even
  print("2. Is Even:");
  print("   5 is even: ${isEven(5)}");
  print("   10 is even: ${isEven(10)}\n");

  // Task 3: Function with named parameters
  print("3. Send Message:");
  print("   ${sendMessage("Hello World!")}");
  print("   ${sendMessage("Test message", sender: "Admin")}\n");

  // Task 4: Function that returns sum from 1 to 10
  print("4. Sum from 1 to 10:");
  print("   Result: ${sumOneToTen()}\n");

  // Task 5: Mini-program with calculate() calling other functions
  print("5. Calculate Program:");
  calculate(5, 3);
  print("");

  // Task 6: Function that prints greeting message
  print("6. Say Hello:");
  sayHello();
  print("");

  // Task 7: Function that returns square of a number
  print("7. Square:");
  print("   Square of 7: ${square(7)}\n");

  // Task 8: Sum function and print result
  print("8. Sum Function:");
  print("   sum(3, 4) = ${sum(3, 4)}\n");

  // Task 9: Arrow function for cube
  print("9. Cube:");
  print("   Cube of 4: ${cube(4)}\n");

  // Task 10: Function with required named parameters
  print("10. Show User:");
  showUser(name: "Daniyar", age: 37);
  print("");

  // Task 11: Function with default parameter
  print("11. Greet:");
  greet();
  greet(name: "Temirbek");
  print("");

  // Task 12: Example with local variable
  print("12. Local Variable Example:");
  demonstrateLocalVariable();
  print("");

  // Task 13: Function returning Pi
  print("13. Get Pi:");
  print("   Pi = ${getPi()}\n");

  // Task 14: Function returning bool - checking if even
  print("14. Check Even (returns bool):");
  print("   Is 8 even? ${checkEven(8)}");
  print("   Is 7 even? ${checkEven(7)}\n");

  // Task 15: Custom function with named parameters
  print("15. Custom Function - Create User Profile:");
  createUserProfile(
    username: "abzal_b",
    email: "abzalbaikenov.ast@gmail.com",
    age: 37,
    isActive: true
  );
}

// === FUNCTION DEFINITIONS ===

// 1. Function that returns full name
String getFullName(String first, String last) {
  return '$first $last';
}

// 2. Arrow function to check if even
bool isEven(int n) => n % 2 == 0;

// 3. Function with named parameters
String sendMessage(String text, {String sender = 'System'}) {
  return '[$sender]: $text';
}

// 4. Function that returns sum from 1 to 10
int sumOneToTen() {
  int result = 0;
  for (int i = 1; i <= 10; i++) {
    result += i;
  }
  return result;
}

// 5. Mini-program: calculate() calls other functions
void calculate(int a, int b) {
  print("   Sum: ${sumNumbers(a, b)}");
  print("   Multiply: ${multiply(a, b)}");
}

int sumNumbers(int a, int b) => a + b;
int multiply(int a, int b) => a * b;

// 6. Function that prints greeting
void sayHello() {
  print("   Hello! Welcome to Dart programming!");
}

// 7. Function returning square of number
int square(int n) {
  return n * n;
}

// 8. Sum function
int sum(int a, int b) {
  return a + b;
}

// 9. Arrow function for cube
int cube(int n) => n * n * n;

// 10. Function with required named parameters
void showUser({required String name, required int age}) {
  print("   User: $name, Age: $age");
}

// 11. Function with default parameter
void greet({String name = 'Guest'}) {
  print("   Hello, $name!");
}

// 12. Example with local variable
void demonstrateLocalVariable() {
  String localMessage = "This is a local variable";
  print("   Inside function: $localMessage");
  // localMessage is not accessible outside this function
}

// 13. Function returning Pi
double getPi() => 3.14;

// 14. Function returning bool - checking if even
bool checkEven(int n) {
  return n % 2 == 0;
}

// 15. Custom function with named parameters
void createUserProfile({
  required String username,
  required String email,
  int age = 18,
  bool isActive = true
}) {
  print("   === User Profile ===");
  print("   Username: $username");
  print("   Email: $email");
  print("   Age: $age");
  print("   Active: $isActive");
}
