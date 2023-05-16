import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int guess;
  Random random = Random();
  int answer = random.nextInt(20);
  do {
    print("Enter a random number:");
    String? temp = stdin.readLineSync();
    // guess = temp as int;
    guess = int.parse(temp!);
    if (guess < answer) {
      print("Too Low");
    } else if (guess > answer) {
      print("Too high");
    }
  } while (guess != answer);
  print("You got it");
}