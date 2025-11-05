

void main() {
// Variable declarations  //=============================
  var greeting = "Hello, everyone!"; // Greeting message
  const name = "Abzal"; //
  final int age = 37; // Age is fixed but can be calculated
  int yearOfBirth = DateTime.now().year - age; // Calculate year of birth based on current year and age
  dynamic occupation = "Software Developer"; // Occupation of the person



// Print the information  //==============================
    print(greeting);  // Print the greeting message
    print("My name is $name and I am $age years old."); // Print name and age
    print("I was born in $yearOfBirth. \nMy occupation is $occupation."); // Print year of birth and occupation


  occupation = 0; // Changing occupation to an integer


  if (occupation == 0) { 
    occupation = changer(occupation); // Assign the returned value
    print("And now I am $occupation");
  }

// Calculator examples  //================================
  print("\n--- Task #4 examples of calculations ---");
  
  // Test different calculator operations
  print("Addition: 10 + 5 = ${calculator(10, 5, '+')}");
  print("Subtraction: 10 - 5 = ${calculator(10, 5, '-')}");
  print("Multiplication: 10 * 5 = ${calculator(10, 5, '*')}");
  print("Division: 10 / 5 = ${calculator(10, 5, '/')}");
  
  // Test with age calculations
  print("Age + 10 years = ${calculator(age, 10, '+')}");
  print("Years until retirement (63 - age) = ${calculator(63, age, '-')}");
   
}




// Function to change occupation  //========================
String changer(dynamic occupation) {
    occupation = "Engineer"; // Occupation of the person  
    return occupation; // Return the new occupation       
}

// Simple Calculator Function  //===========================
double calculator(num num1, num num2, String operation) {
  switch (operation) {
    case '+':
      return (num1 + num2).toDouble();
    case '-':
      return (num1 - num2).toDouble();
    case '*':
      return (num1 * num2).toDouble();
    case '/':
      if (num2 != 0) {
        return (num1 / num2);
      } else {
        print("Error: Division by zero!");
        return 0.0;
      }
    default:
      print("Error: Invalid operation '$operation'");
      return 0.0;
  }
}

