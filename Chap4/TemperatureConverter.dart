import 'dart:io';

void main(List<String> arguments) {
  print("A:Convert Celsius to Fahrenheit\nB:Convert Fahrenheit to Celsius");
  String? selection;

  do {
    selection = stdin.readLineSync()?.toUpperCase();
  } while (selection != 'A' && selection != 'B');
  print("Enter the starting temperature:");
  String? temp = stdin.readLineSync();
  int temperature = int.parse(temp!);

  switch(selection){
    case "A":
      print("$temperature degree Celsius is ${temperature * 1.8 + 32} degree Fahrenheit");
      break;
    case "B":
      print("$temperature degree Fahrenheit is ${(temperature - 32) / 1.8} degree Celsius");
      break;
    default:
      break;
  }
}
