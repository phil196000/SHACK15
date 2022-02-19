import 'package:flutter/material.dart';

import '../../customised_widgets/text/primary_text.dart';

class Rooms extends StatefulWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  _RoomsState createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: PrimaryText(text: 'ROOMS SCREEN',weight: FontWeight.bold,size: 30,),
    );
  }
}