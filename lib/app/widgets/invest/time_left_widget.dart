import 'package:flutter/material.dart';

class TimeLeftWidget extends StatelessWidget {
  const TimeLeftWidget({super.key, required this.dayCount});

  final int dayCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.access_time_sharp),
        const SizedBox(width: 5),
        Text('$dayCount Days Left'),
      ],
    );
  }
}