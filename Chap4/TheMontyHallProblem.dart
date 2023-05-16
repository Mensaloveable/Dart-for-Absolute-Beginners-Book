import 'dart:math';

void main(List<String> args) {
  const int TRIALS = 1000000;
  int correct = 0;
  Random random = Random();
  for (int i = 0; i < TRIALS; i++) {
    int randDoor = random.nextInt(3) + 1;
    int guess = 1;
    int eliminated;

    if(randDoor == 2) {
      eliminated = 3;
    } else if (randDoor == 3) {
      eliminated = 2;
    } else {
      eliminated = random.nextInt(2) + 2;
    }

    if(eliminated == 2) {
      guess = 3;
    } else if (eliminated == 3){
      guess = 2;
    }

    if(guess == randDoor){
      correct++;
    }
  }

  print("The percentage of correct guess was ${correct / TRIALS * 100}%");
}
