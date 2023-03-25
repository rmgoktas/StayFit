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

  return number.toString().replaceAllMapped(
    RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
    (Match m) => '${m[1]},',
    );
}
