import 'dart:math';

void main() {
  print("---=== OOP HOMEWORK - Advanced DAY 8 ===---\n");

  // Tasks 1-3: Animal with Bird and Fish
  print("Tasks 1-3: Animal Hierarchy with Polymorphism");
  List<Animal> animals = [
    Bird(),
    Fish(),
    Bird(),
    Fish(),
  ];

  for (var animal in animals) {
    animal.sound();
  }
  print("");

  // Task 4: Account with private balance
  print("Task 4: Account Class");
  Account account = Account();
  print("Initial balance: \$${account.getBalance()}");
  account.deposit(100);
  print("After depositing \$100: \$${account.getBalance()}");
  account.deposit(50.5);
  print("After depositing \$50.5: \$${account.getBalance()}");
  print("");

  // Tasks 5-7: Shape hierarchy with Circle and Square
  print("Tasks 5-7: Shape Hierarchy");
  List<Shape> shapes = [
    Circle(5.0),
    Square(4.0),
    Circle(3.0),
    Square(6.0),
  ];

  for (var shape in shapes) {
    if (shape is Circle) {
      print("Circle with radius ${shape.radius}: area = ${shape.area().toStringAsFixed(2)}");
    } else if (shape is Square) {
      print("Square with side ${shape.side}: area = ${shape.area().toStringAsFixed(2)}");
    }
  }
  print("");

  // Task 8: Person hierarchy with Student and Teacher
  print("Task 8: Person, Student, and Teacher");
  Student student = Student("Neo", 20, "Computer Science");
  Teacher teacher = Teacher("Dr. Smith", 45, "Mathematics");

  student.introduce();
  teacher.introduce();
  print("");

  // Task 9: Bank with multiple accounts
  print("Task 9: Bank Class");
  Bank bank = Bank();
  
  Account acc1 = Account();
  acc1.deposit(1000);
  
  Account acc2 = Account();
  acc2.deposit(2500);
  
  Account acc3 = Account();
  acc3.deposit(750.50);
  
  bank.addAccount(acc1);
  bank.addAccount(acc2);
  bank.addAccount(acc3);
  
  print("Total balance in bank: \$${bank.getTotalBalance().toStringAsFixed(2)}");
  print("");

  // Task 10: Polymorphism demonstration
  print("Task 10: Polymorphism Demonstration");
  List<Person> people = [
    Student("Nurbolat", 22, "Physics"),
    Teacher("Prof. Khimikbay", 50, "Chemistry"),
    Student("Oraz", 19, "Biology"),
    Teacher("Dr. Tarikh", 38, "History"),
  ];

  print("Processing people as Person objects:");
  for (var person in people) {
    person.introduce(); // Polymorphic call
  }
}

// ============ TASK 1-3: Animal Classes ============

// Task 1: Animal class with sound method
class Animal {
  void sound() {
    print("Animal makes a sound");
  }
}

// Task 2: Bird class
class Bird extends Animal {
  @override
  void sound() {
    print("Bird: Tweet-tweet!");
  }
}

// Task 2: Fish class
class Fish extends Animal {
  @override
  void sound() {
    print("Fish: Blub-blub!");
  }
}

// ============ TASK 4: Account Class ============

class Account {
  double _balance = 0.0; // Private field

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  double getBalance() {
    return _balance;
  }
}

// ============ TASK 5-7: Shape Classes ============

// Task 5: Base Shape class
abstract class Shape {
  double area();
}

// Task 6: Circle implementation
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

// Task 6: Square implementation
class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double area() {
    return side * side;
  }
}

// ============ TASK 8: Person Hierarchy ============

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print("Hi, I'm $name, $age years old.");
  }
}

class Student extends Person {
  String major;

  Student(String name, int age, this.major) : super(name, age);

  @override
  void introduce() {
    print("Hi, I'm $name, $age years old. I'm a student studying $major.");
  }
}

class Teacher extends Person {
  String subject;

  Teacher(String name, int age, this.subject) : super(name, age);

  @override
  void introduce() {
    print("Hi, I'm $name, $age years old. I'm a teacher teaching $subject.");
  }
}

// ============ TASK 9: Bank Class ============

class Bank {
  List<Account> _accounts = [];

  void addAccount(Account account) {
    _accounts.add(account);
  }

  double getTotalBalance() {
    double total = 0;
    for (var account in _accounts) {
      total += account.getBalance();
    }
    return total;
  }
}
