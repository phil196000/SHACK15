import 'package:shack15/theme/colors.dart';
import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  final String text;
  final FontWeight? weight;
  final double? size;
  final EdgeInsets? margin;
  final int? maxLines;
  final TextAlign? textAlign;
  const PrimaryText(
      {Key? key,
      required this.text,
      this.weight = FontWeight.normal,
      this.size,
      this.textAlign,
      this.maxLines,
      this.margin = const EdgeInsets.all(5)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(
        text,
        maxLines: maxLines,
        textAlign: textAlign,
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
