// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'dart:math' as math;

int time = 5;
int? nullnableTopLevel;
int nonNullableTopCode = 10;

// Var type avd Dynamic Type
var vi = 5;
var v2 = 'Example 1';
var v3 = [1, 2, 3];

dynamic di = 10;
dynamic d2 = "Example 2";
dynamic d3 = [4, "solo", 6];

void variables() {
  print("Hello world from variables\n");
  // print("nullable: $nullnableTopLevel and non-nullable: $nonNullableTopCode");

  // print("Var runtimeTypes:");
  // print(vi.runtimeType);
  // print(v2.runtimeType);
  // print(v3.runtimeType);

  // print('\n');

  // print("Dynamic runtimeTypes:");
  // print(di.runtimeType);
  // print(d2.runtimeType);
  // print(d3.runtimeType);

  // Built in types
  int a = 5;
  int b = 10;
  print(a + b);

  num num1 = 10;
  print(num1.runtimeType);
  num1 = 12.0;
  print(num1.runtimeType);

  String s = '120';
  print(s.runtimeType);
  var ss = int.parse(s);
  print(ss.runtimeType);

  List<num> myNumbers = [10, 2.3, 3, 42.4, 5, 6, 7, 8];
  print(myNumbers[4]);
  print(myNumbers[myNumbers.length - 1]);
  // for (var number in myNumbers) {
  //   print(number);
  // }
  // myNumbers.add(200);
  // for (int i = 0; i < myNumbers.length; i++) {
  //   print('${i + 1}: ${myNumbers[i]}');
  // }

  print("-----------------");

  var newrr = [...myNumbers];
  newrr.sort();
  newrr = newrr.reversed.toList();
  newrr.addAll([70, 0.5, 13, 0]);
  newrr.sort();
  newrr = newrr.map((e) => e + 1).toList();
  print(newrr);

  var newArr = (([...myNumbers]..sort()).reversed.toList()
        ..addAll([70, 0.5, 13, 0])
        ..sort())
      .map((e) => e + 1)
      .toList();
  print(newArr);

  // Sets
  Set<int> newrr2 = {1, 2, 1, 4, 3, 2};
  newrr2.addAll({4, 6, 7, 6, 7, 3});
  print(newrr2);

  // Maps
  Map<String, dynamic> newrr3 = {
    "name": 'George',
    "age": 70,
    "is_single": true
  };

  print(newrr3.keys);
  print(newrr3.values);
  print(newrr3["name"]);
  print(newrr3.entries.length);

  // Runes
  Runes runes = Runes("Hello");
  var runes2 =
      Runes("Hello").map((e) => e.toRadixString(16).padLeft(4, '0')).toList();
  var runes3 = Runes("🥰😘😊😁😭")
      .map((e) => e.toRadixString(16).padLeft(4, '0'))
      .toList();
  print(runes);
  print(runes2);
  print('\u{1F339}');
  print(runes3);
  print('\u{1f970}\u{1f618}\u{1f60a}\u{1f601}\u{1f62d}');

  // Functions
  int first(int a, int b) {
    return a + b;
  }

  void second(int Function(int) f, int a) {
    print(f.call(a));
    print(f(a));
  }

  var functionObject = first;
  print(functionObject(2, 3));
  second((e) => e + 5, 5);

  var list =
      ['hello', 'howdy', 'xup'].map((String s) => s.toUpperCase()).toList();
  print(list);

  // function calling another funtion
  String Function(String) makeCar(String make) {
    var engine = "4.4 V8";
    return (model) => '$make $model $engine';
  }

  var car = makeCar("BMW");
  print(car('Corolla'));

  // how to call a class as a function
  // var classFunc = A();
  // classFunc();
  A()();

  // Arithmetic Operators
  int x = 7;
  int y = 3;

  print(x - y);

  // Comparism Operatior
  // var b1 = B(1, 2);
  // var b2 = B(1, 2);
  var b1 = const B(1, 2);
  var b2 = const B(1, 2);

  print('b1 == b2: ${b1 == b2}');
  print('identical(b1, b2): ${identical(b1, b2)}');

  // IS operator
  var lists = [1, 2.5, 'test', false, null]..forEach((element) {
      if (element is int) {
        print("$element is int");
      } else if (element is double) {
        print("$element is double");
      } else if (element is bool) {
        print("$element is bool");
      } else if (element == null) {
        print('$element is null');
      }
    });

  print(lists);

  // Exceptions
  int min = -1, max = 2;
  int zero = min + math.Random().nextInt(max - min);

  print("Random zero: $zero");

  try {
    if (zero < 0) {
      throw NegativeValue(message: 'Negative value');
    } else if (zero > 0) {
      throw PositiveValue(message: "Positive value");
    }
  } on NegativeValue {
    print("The value is negative");
  } catch (e) {
    if (e is PositiveValue) {
      print("The value is Positive");
      rethrow;
    }
  } finally {
    zero = 0;
  }

  if (zero == 0) {
    print("Zero at the end: $zero");
  }

  // Classes
}

// Exceptions
class NegativeValue implements Exception {
  final String message;
  NegativeValue({required this.message});
}

class PositiveValue implements Exception {
  final String message;
  PositiveValue({required this.message});
}

// Comparism Operatior
// class B {
//   final int a;
//   final int b;

//   // B(this.a, this.b);
//   const B(this.a, this.b);

//   @override
//   bool operator ==(covariant B other) {
//     if (identical(this, other)) return true;

//     return other.a == a && other.b == b;
//   }

//   @override
//   int get hashCode => a.hashCode ^ b.hashCode;
// }

class B extends Equatable {
  final int a;
  final int b;

  const B(this.a, this.b);

  @override
  List<Object?> get props => [a, b];
}

// OR

// how to call a class as a function
class A {
  void call() => print('This is a class function call!');
}
