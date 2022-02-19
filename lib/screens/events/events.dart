import 'package:flutter/material.dart';

import '../../customised_widgets/text/primary_text.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return   const Center(
      child: PrimaryText(text: 'EVENTS SCREEN',weight: FontWeight.bold,size: 30,),
    );
  }
}