import 'package:flutter/material.dart';

class EstimatedProfitGrade extends StatelessWidget {
  const EstimatedProfitGrade({
    super.key,
    required this.profitGrade,
    required this.color,
  });

  final String profitGrade;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('ESTIMATED PROFIT'),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: color,
              ),
              borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            profitGrade,
            style: TextStyle(fontSize: 21, color: color),
          ),
        )
      ],
    );
  }
}
