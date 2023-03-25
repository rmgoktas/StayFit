import 'package:flutter/material.dart';
import 'package:stayfit_app/widgets/helpers.dart';

class Dates extends StatelessWidget {
  const Dates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DateBox> dateBoxes = [];

    //DateTime date = DateTime.parse('2021-11-08');
    DateTime date = DateTime.now().subtract(const Duration(days: 3));

    for (int i = 0; i < 6; i++) {
      dateBoxes.add(DateBox(date: date, active: i == 3));
      date = date.add(const Duration(days: 1));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: dateBoxes),
    );
  }
}

class DateBox extends StatelessWidget {
  final bool active;
  final DateTime date;

  const DateBox({
    Key? key,
    this.active = false,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 90,
      decoration: BoxDecoration(
          gradient: active
              ? const LinearGradient(colors: [
                  Color.fromARGB(158, 210, 245, 85),
                  Color.fromARGB(255, 0, 255, 8)
                ], begin: Alignment.topCenter)
              : null,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white)),
      child: DefaultTextStyle.merge(
        style: active ? const TextStyle(color: Colors.white) : null,
        child: Column(children: [
          const SizedBox(height: 10),
          Text(
            daysOfWeek[date.weekday]!,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(date.day.toString(),
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ))
        ]),
      ),
    );
  }
}
