import 'package:fintech_app_getx/app/widgets/invest/estimation_profit_grade.dart';
import 'package:fintech_app_getx/app/widgets/invest/estimation_text.dart';
import 'package:fintech_app_getx/app/widgets/invest/time_left_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    this.dayCount,
    required this.name,
    required this.shortDetails,
    required this.longDetails,
    required this.imageUrl,
    required this.profitPercentage,
    required this.unit,
    required this.repaymentTK,
    this.toProfitPercentage,
  });

  final int? dayCount;
  final String name;
  final String shortDetails;
  final String longDetails;
  final String imageUrl;
  final double profitPercentage;
  final double? toProfitPercentage;
  final String unit;
  final double repaymentTK;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: Get.width * .6,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        shortDetails,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        longDetails,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ]),
              ),
              const SizedBox(height: 15),
              Column(
                children: [
                  if (dayCount != null) TimeLeftWidget(dayCount: dayCount!),
                  Image.asset(imageUrl),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('ESTIMATED PROFIT'),
                  const SizedBox(height: 15),
                  EstimationText(
                      from: '$profitPercentage',
                      unit: unit,
                      to: toProfitPercentage)
                ],
              ),
              const EstimatedProfitGrade(profitGrade: 'B', color: Colors.red),
            ],
          ),
          const SizedBox(height: 15),
          ElevatedButton(
              onPressed: () {},
              child: Text('Projected Repayment Tk  $repaymentTK')),
        ],
      ),
    );
  }
}
