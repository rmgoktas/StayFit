import 'package:flutter/material.dart';
import 'package:stayfit_app/helpers/funcHelpers.dart';

class Steps extends StatelessWidget {
  const Steps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String steps = formatNumber(randNumberBetween(3000, 6000));

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            steps,
            style: const TextStyle(fontSize: 75, fontWeight: FontWeight.w900),
          ),
          const Text(
            "Total Steps",
            style:
                TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
