import 'dart:math';

final Map<int, String> daysOfWeek = {
  1: "MON",
  2: "TUE",
  3: "WED",
  4: "THU",
  5: "FRI",
  6: "SAT",
  7: "SUN",
};



int randNumberBetween(int min, int max) {
  return Random().nextInt(max - min) + min;
}

String formatNumber(int number) {
  return number.toString();
}

class CalculateResult {
  final int height;
  final int weight;
  late double result;
  late String msg = "";

  CalculateResult(this.height, this.weight);

  String calculateResult() {
    result = weight / pow(height / 100, 2);
    return result.toStringAsFixed(1);
  }

  String getDescription() {
    if (result >= 25) {
      msg = "Over Weight";
      return "You have a higher weight than normal, try to lose some weight through any activity you want.";
    } else if (result >= 18.5) {
      msg = "Normal Weight";
      return "You have normal weight. Keep it.";
    } else {
      msg = "Under Weight";
      return "Your weight is less than normal weight. Please gain some weight.";
    }
  }
}
