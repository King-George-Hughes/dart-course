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
}
