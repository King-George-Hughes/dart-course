import 'package:console_project/console_project.dart' as console_project;
import 'package:console_project/src/calculate.dart';

void main(List<String> arguments) {
  print('Hello world: ${console_project.calculate()}!');

  // Printing my calculator
  print("Add: ${calculateAdd()}");
  print("Subtract:  ${calculateSubtract()}");
  print("Multiply: ${calculateMultiply()}");
  print("Divide: ${calculateDivide()}");
}
