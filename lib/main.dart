//  BASIC CLASSES

// 1) Circle
class Circle {
  double radius;
  String color;
  Circle(this.radius, this.color);
  double getRadius() => radius;
  String getColor() => color;
}

// 2) Student
class Student {
  String name;
  int age;
  double GPA;
  Student(this.name, this.age, this.GPA);
  String getName() => name;
  int getAge() => age;
  double getGPA() => GPA;
}

// 3) Car
class Car {
  String make;
  String model;
  int year;
  Car(this.make, this.model, this.year);
  String getMake() => make;
  String getModel() => model;
  int getYear() => year;
}

// 4) Book
class Book {
  String title;
  String author;
  int year;
  Book(this.title, this.author, this.year);
  String getTitle() => title;
  String getAuthor() => author;
  int getYear() => year;
}

// 5) Rectangle
class Rectangle {
  double width;
  double height;
  Rectangle(this.width, this.height);
  double getWidth() => width;
  double getHeight() => height;
  double area() => width * height;
  double perimeter() => 2 * (width + height);
}

// 6) BankAccount
class BankAccount {
  String accountNumber;
  double balance;
  String owner;
  BankAccount(this.accountNumber, this.balance, this.owner);
  String getAccountNumber() => accountNumber;
  double getBalance() => balance;
  String getOwner() => owner;

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print("Insufficient funds");
    }
  }
}

// INHERITANCE

// 7) Car and PassengerCar
class SimpleCar {
  String make;
  int year;
  SimpleCar(this.make, this.year);
  String description() => "This is a car made by $make in the year $year.";
}
class PassengerCar extends SimpleCar {
  PassengerCar(String make, int year) : super(make, year);
  @override
  String description() => "This is a passenger car made by $make in $year.";
}

// 8) Fruit and apple
class Fruit {
  String name;
  Fruit(this.name);
  String taste() => "Tasty.";
}
class Apple extends Fruit {
  Apple(String name) : super(name);
  @override
  String taste() => "$name tastes sweet and crisp.";
}

// 9) Animal and dog
class Animal {
  String name;
  int age;
  Animal(this.name, this.age);
  String sound() => "Generic animal sound.";
}
class Dog extends Animal {
  Dog(String name, int age) : super(name, age);
  @override
  String sound() => "$name says: Woof!";
}

// 10) Item and product
class Item {
  String name;
  double price;
  Item(this.name, this.price);
  String description() => "Item: $name, Price: \$$price";
}
class Product extends Item {
  Product(String name, double price) : super(name, price);
  @override
  String description() => "Product $name costs \$$price.";
}

// 11) Shape and circle
class Shape {
  String color;
  Shape(this.color);
  double area() => 0.0;
}
class ShapeCircle extends Shape {
  double radius;
  ShapeCircle(this.radius, String color) : super(color);
  @override
  double area() => 3.14159 * radius * radius;
}

// 12) Employee and Manager
class Employee {
  String name;
  double salary;
  Employee(this.name, this.salary);
  String displayInfo() => "Employee: $name, Salary: \$$salary";
}

class Manager extends Employee {
  Manager(String name, double salary) : super(name, salary);
  @override
  String displayInfo() => "Manager: $name earns \$$salary";
}

// OUTPUTS

void main() {
  // 1
  var circle = Circle(4.5, 'Red');
  print("Circle radius: ${circle.getRadius()}, color: ${circle.getColor()}");

  // 2
  var student = Student('John', 18, 4.0);
  print("Student name: ${student.getName()}, age: ${student.getAge()}, GPA: ${student.getGPA()}");

  // 3
  var car = Car('BMW', 'M5 F90', 2024);
  print("Car make: ${car.getMake()}, model: ${car.getModel()}, year: ${car.getYear()}");

  // 4
  var book = Book('Crime and Punishment', 'Fyodor Dostoevsky', 1866);
  print("Book title: ${book.getTitle()}, author: ${book.getAuthor()}, year: ${book.getYear()}");

  // 5
  var rectangle = Rectangle(10, 5);
  print("Rectangle width: ${rectangle.getWidth()}, height: ${rectangle.getHeight()}, area: ${rectangle.area()}, perimeter: ${rectangle.perimeter()}");

  // 6
  var account = BankAccount('123ABC', 500.0, 'John');
  print("Bank account owner: ${account.getOwner()}, balance: ${account.getBalance()}");
  account.deposit(150);
  account.withdraw(100);
  print("Updated balance: ${account.getBalance()}");

  // 7
  var passengerCar = PassengerCar('Toyota', 2022);
  print(passengerCar.description());

  // 8
  var apple = Apple('Apple');
  print(apple.taste());

  // 9
  var dog = Dog('Tuzik', 3);
  print(dog.sound());

  // 10
  var product = Product('Laptop', 999.99);
  print(product.description());

  // 11
  var shapeCircle = ShapeCircle(3.0, 'Blue');
  print("ShapeCircle color: ${shapeCircle.color}, area: ${shapeCircle.area().toStringAsFixed(3)}");

  // 12
  var manager = Manager('Sarah', 10000);
  print(manager.displayInfo());
}