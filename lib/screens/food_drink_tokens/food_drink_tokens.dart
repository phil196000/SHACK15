import 'package:flutter/material.dart';

import '../../customised_widgets/text/primary_text.dart';

class FoodDrinkTokens extends StatefulWidget {
  const FoodDrinkTokens({Key? key}) : super(key: key);

  @override
  _FoodDrinkTokensState createState() => _FoodDrinkTokensState();
}

class _FoodDrinkTokensState extends State<FoodDrinkTokens> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: PrimaryText(text: 'FOOD & DRINK & TOKENS SCREEN',weight: FontWeight.bold,size: 30,),
    );
  }
}