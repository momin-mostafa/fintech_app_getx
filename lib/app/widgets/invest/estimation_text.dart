import 'package:flutter/material.dart';

class EstimationText extends StatelessWidget {
  const EstimationText({
    super.key,
    this.from = '19',
    this.textColor = Colors.black,
    this.unit = 'per annum', this.to,
  });

  final String from;
  final double? to;

  final Color textColor;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: from,
        style: TextStyle(
          fontSize: 18,
          color: textColor,
        ),
        children: [
          TextSpan(
            text: '% ',
            style: TextStyle(
              fontSize: 18,
              color: textColor,
            ),
          ),
          if(to!=null)
          TextSpan(
            text: '~',
            style: TextStyle(
              fontSize: 18,
              color: textColor,
            ),
          ),
          if(to!=null)
          TextSpan(
            text: '$to',
            style: TextStyle(
              fontSize: 18,
              color: textColor,
            ),
          ),
          if(to!=null)
          TextSpan(
            text: '% ',
            style: TextStyle(
              fontSize: 18,
              color: textColor,
            ),
          ),
          TextSpan(
            text: unit,
            style: TextStyle(
              fontSize: 12,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
