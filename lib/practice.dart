import 'dart:io';

void main() {
  //============================ Variables and Datatypes
  print("Welcome to Dart!!");

  var lang = "Flutter";
  print(lang);

  int? a = 45;
  print(a);

  String greet = 'Hello!';
  print(greet);

  bool isLogin = true;
  print(isLogin);

  //=============================== Dynamically storing data
  dynamic response = 4;
  response = true;
  response = "Hanlza";
  print(response);

  var res;
  res = true;
  res = "Hanlza";
  print(res);

  //============================== Getting data from user

  //  stdout.write("Name: ");
  //  var name =  stdin.readLineSync();
  //  print("Name is $name");

  //========================================= Calling Functions

  printGreet();
  printSomething("Hanzla is learning dart");

  //======================================= Using class

  var safari = Animals();
  safari.printAnimal();

  //====================================== Lists
  var firstList = [1, 2, 3, 4, 5];
  firstList.add(6);
  print(firstList);

  var secondList = [6, 7];
  firstList.addAll(secondList);

  print(firstList);

  firstList.insert(2, 100);
  print(firstList);

  firstList.replaceRange(3, 4, [200, 300]);
  print(firstList);

  firstList.removeLast();
  print(firstList);

  firstList.remove(200);
  print(firstList);

  firstList.removeAt(2);
  print(firstList);

  firstList.removeRange(3, 5);
  print(firstList);

  print("Length: ${firstList.length}");
  print("Reversed: ${firstList.reversed}");
  print("First Element: ${firstList.first}");
  print("Last: ${firstList.last}");
  print("Is Empty: ${firstList.isEmpty}");
  print("Is not Empty: ${firstList.isNotEmpty}");
  print("Specific Element: ${firstList.elementAt(2)}");

//====================================== Maps

  var map_one = {'key1': 'Hanzla', 'key2': 0504, 'age': 17};

  print(map_one);
  print(map_one['key2']);

  map_one['key2'] = '24F-0504';
  print(map_one);

  print(map_one.isNotEmpty);
  print(map_one.isEmpty);
  print(map_one.length);
  print(map_one.keys);
  print(map_one.values);
  print(map_one.containsKey('age'));
  print(map_one.remove('key2'));
}

//====================================== Functions

void printGreet() {
  print("Good Morning");
}

void printSomething(String word) {
  print("Here is the Printed Word `" + word + "`");
}

//==================================== Classes and Constructor
class Animals {
  // The below function is default contructor and optional. Used to run the function everytime when the class will be used.
  Animals() {
    print("The constructor is calling");
  }
  void printAnimal() {
    print("Lion,Tiger");
  }
}
