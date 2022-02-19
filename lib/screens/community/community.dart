import 'package:flutter/material.dart';
import '../../customised_widgets/text/primary_text.dart';

class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: PrimaryText(
        text: 'COMMUNITY SCREEN',
        weight: FontWeight.bold,
        size: 30,
      ),
    );
  }
}
