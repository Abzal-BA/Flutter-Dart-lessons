import 'dart:io';

void main( ) {
  
  // 1st task
  print("Input your first value");
  int a = int.parse(stdin.readLineSync()!);
  print("Input your second value");
  int b = int.parse(stdin.readLineSync()!);
  
  
  print("the sum : ${a+b}");
  print("the gap : ${a-b}");
  
  // 2nd task
  print("Checking if the numbers are multiples of 5");
  int c = int.parse(stdin.readLineSync()!);
  if (c%5==0){
    print("$c is a multiple of 5");
  }else{
    print("$c is NOT a multiple of 5");
  }


  // 3rd task - to check which of the three numbers is more than 4
  if (a > 4) {
    print("$a number is greater than 4");
  }
  if (b > 4) {
    print("$b number is greater than 4");
  }
  if (c > 4) {
    print("$c number is greater than 4");
  }

  // 4th tack - to check which of the three numbers are between 100 and 999.5
  if (a >= 100 && a <= 999.5) {
    print("$a number is between 100 and 999.5");
  } 
  if (b >= 100 && b <= 999.5) {
    print("$b number is between 100 and 999.5");
  }
  if (c >= 100 && c <= 999.5) {
    print("$c number is between 100 and 999.5");
  }

  // 5th task - to use logical operators to login to system
  String username = "admin";
  String password = "password123";

  print("Enter your username:");
  String inputUsername = stdin.readLineSync()!;
  print("Enter your password:");
  String inputPassword = stdin.readLineSync()!;

  if (inputUsername == username && inputPassword == password) {
    print("Login successful!");
  } else {
    print("Login failed!");
  }  

  // 6th task - using ternary operator to check if user is adult or minor
  print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);
  String result = (age >= 18) ? "Adult" : "Minor";
  print("You are $result.");

  // 7th task - using if else to define the mass acording BMI index
  print("Enter your weight in kg:");
  double weight = double.parse(stdin.readLineSync()!);
  print("Enter your height in meters:");
  double height = double.parse(stdin.readLineSync()!);
  double bmi = weight / (height * height);
  if (bmi < 18.5) {
    print("You are underweight.");
  } else if (bmi < 24.9) {
    print("You are normal weight.");
  } else if (bmi < 29.9) {
    print("You are overweight.");
  } else {
    print("You are obese.");
  }

  // 8th task - to determine if value same time multiple of 4 and 6
  print("Enter a number:");
  int d = int.parse(stdin.readLineSync()!);
  if (d % 4 == 0 && d % 6 == 0) {
    print("$d is a multiple of both 4 and 6");
  } else {
    print("$d is NOT a multiple of both 4 and 6");
  }

  // 9th task - to check if string empty or not
  print("Enter a string:");
  String inputString = stdin.readLineSync()!;
  if (inputString.isEmpty) {
    print("String is empty");
  } else {
    print("String is NOT empty");
  }

  // 10th task - to request age if 18 or older request driver license else print minor
  print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);
  if (age >= 18) {
    print("You are eligible for a driver's license.");
  } else {
    print("You are a minor.");
  }

  

  // additional tasks

  // 1st task - to create calculator using if else
  print("Enter first number:");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);
  print("Enter an operator (+, -, *, /):");
  String operator = stdin.readLineSync()!;

  double result;
  if (operator == "+") {
    result = num1 + num2;
  } else if (operator == "-") {
    result = num1 - num2;
  } else if (operator == "*") {
    result = num1 * num2;
  } else if (operator == "/") {
    result = num1 / num2;
  } else {
    print("Invalid operator");
    return;
  }
  print("Result: $result");

  // 2nd task - using inputs to determine value A, B, C, D or F
  print("Enter your score (0-100):");
  int score = int.parse(stdin.readLineSync()!);
  String grade;
  if (score >= 90) {
    grade = "A";
  } else if (score >= 80) {
    grade = "B";
  } else if (score >= 70) {
    grade = "C";
  } else if (score >= 60) {
    grade = "D";
  } else {
    grade = "F";
  }
  print("Your grade is: $grade");

  // 3rd task - to check if username beginning with A
  print("Enter your username:");
  String username = stdin.readLineSync()!;
  if (username.startsWith("A")) {
    print("Username starts with A");
  } else {
    print("Username does NOT start with A");
  }

  // 4th task - need to define week num and print day name
  print("Enter a number (1-7) for the day of the week:");
  int dayNum = int.parse(stdin.readLineSync()!);
  switch (dayNum) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day number");
  }


// 5th task - to check if number is multiple of 3 and 5
  print("Enter a number:");
  double number = double.parse(stdin.readLineSync()!);
  if (number % 3 == 0 && number % 5 == 0) {
    print("$number is a multiple of both 3 and 5");
  } else {
    print("$number is NOT a multiple of both 3 and 5");
  }

}