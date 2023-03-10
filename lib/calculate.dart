import 'dart:math';

class calculate {
  final int height;
  final int weight;
  calculate({required this.height, required this.weight});

  String cbmi() {
    double bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String geti() {
    double bmi = weight / pow(height / 100, 2);
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  String getres() {
    double bmi = weight / pow(height / 100, 2);
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}
