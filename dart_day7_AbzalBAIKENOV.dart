import 'dart:math';

void main() {
  print("=== HOMEWORK DAY 7 - OOP ===\n");

  // Task 1-4: Animal hierarchy with Dog and Cat
  print("Tasks 1-4: Animal Hierarchy");
  Dog dog = Dog("Rex");
  Cat cat = Cat("Murka");
  
  print("Dog name: ${dog.name}");
  dog.makeSound();
  
  print("Cat name: ${cat.name}");
  cat.makeSound();
  print("");

  // Task 5-6: Person class with constructor and introduce method
  print("Tasks 5-6: Person Class");
  Person person1 = Person("Abzal", 37);
  Person person2 = Person("Daniyar", 36);
  
  person1.introduce();
  person2.introduce();
  print("");

  // Task 7: Book class with named constructor
  print("Task 7: Book Class with Named Constructor");
  Book book1 = Book("The Great Gatsby", "F. Scott Fitzgerald");
  Book book2 = Book.unknown();
  
  book1.displayInfo();
  book2.displayInfo();
  print("");

  // Task 8-10: Circle class with private field and methods
  print("Tasks 8-10: Circle Class");
  Circle circle = Circle(5.0);
  
  print("Circle radius: ${circle.getRadius()}");
  print("Circle area: ${circle.area().toStringAsFixed(2)}");
  
  // Try to set negative radius (should be rejected)
  print("\nAttempting to set radius to -3:");
  circle.setRadius(-3);
  print("Current radius: ${circle.getRadius()}");
  
  // Set valid radius
  print("\nSetting radius to 10:");
  circle.setRadius(10);
  print("New radius: ${circle.getRadius()}");
  print("New area: ${circle.area().toStringAsFixed(2)}");
}

// Task 1: Animal class with name field and makeSound method
class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print("Animal makes a sound");
  }
}

// Task 2: Dog class inherits from Animal
class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print("Woof-woof!");
  }
}

// Task 3: Cat class with makeSound method
class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print("Meow!");
  }
}

// Task 5: Person class with name and age
class Person {
  String name;
  int age;

  // Task 6: Constructor with parameters
  Person(this.name, this.age);

  void introduce() {
    print("Hello! My name is $name and I am $age years old.");
  }
}

// Task 7: Book class with named constructor
class Book {
  String title;
  String author;

  // Regular constructor
  Book(this.title, this.author);

  // Named constructor for unknown books
  Book.unknown()
      : title = "Unknown",
        author = "Unknown";

  void displayInfo() {
    print("Book: '$title' by $author");
  }
}

// Task 8-10: Circle class with private field
class Circle {
  double _radius; // Task 9: Private field

  Circle(this._radius);

  // Task 8: Method to calculate area (πr²)
  double area() {
    return pi * _radius * _radius;
  }

  // Task 9: Setter that doesn't accept negative values
  void setRadius(double radius) {
    if (radius < 0) {
      print("Error: Radius cannot be negative!");
    } else {
      _radius = radius;
    }
  }

  // Task 10: Getter to return current radius value
  double getRadius() {
    return _radius;
  }
}
