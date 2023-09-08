import 'package:console_project/console_project.dart' as console_project;
import 'package:console_project/src/calculate.dart';
import 'package:console_project/dart_variables.dart' as dart_variable;

void main(List<String> arguments) {
  print('Hello world: ${console_project.calculate()}!');

  // Printing my calculator
  print("Add: ${calculateAdd()}");
  print("Subtract:  ${calculateSubtract()}");
  print("Multiply: ${calculateMultiply()}");
  print("Divide: ${calculateDivide()}");

  // Dart Variables
  dart_variable.variables();
}
