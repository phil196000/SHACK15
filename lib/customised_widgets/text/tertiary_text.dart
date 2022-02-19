import 'package:shack15/theme/colors.dart';
import 'package:flutter/material.dart';

class TertiaryText extends StatelessWidget {
  final String text;
  final FontWeight? weight;
  final double? size;
  final EdgeInsets? margin;
  const TertiaryText(
      {Key? key,
        required this.text,
        this.weight = FontWeight.normal,
        this.size = 16,
        this.margin = const EdgeInsets.all(5)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(
        text,
        style: TextStyle(
          fontSize: size,
          color: AppColors.primary,
          fontWeight: weight,
        ),
        // textAlign: TextAlign.left,
      ),
    );
  }
}
