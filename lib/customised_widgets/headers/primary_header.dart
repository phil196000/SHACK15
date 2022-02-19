import 'package:flutter/material.dart';
import 'package:shack15/customised_widgets/text/primary_text.dart';
import 'package:shack15/theme/colors.dart';

class PrimaryHeader extends StatelessWidget {
  const PrimaryHeader({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          const Expanded(
              child: Divider(
            indent: 15,
            endIndent: 15,
            color: AppColors.primary,
          )),
          Expanded(
              flex: 2,
              child: PrimaryText(
                text: text,
                textAlign: TextAlign.center,
                weight: FontWeight.w500,
                size: 14,
              )),
          const Expanded(
              child:
                  Divider(indent: 15, endIndent: 15, color: AppColors.primary)),
        ],
      ),
    );
  }
}
