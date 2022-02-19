import 'package:flutter/material.dart';
import 'package:shack15/screens/news/views/banner.dart';
import 'package:shack15/screens/news/views/latest_news.dart';
import 'package:shack15/screens/news/views/rooms_available.dart';
import 'package:shack15/screens/news/views/shack_now.dart';
import 'package:shack15/screens/news/views/token.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const NewsBanner(),
          const SizedBox(
            height: 15,
          ),
          ShackNow(),
          const Token(),
          LatestNews(),
          RoomsAvailable()
        ],
      ),
    );
  }
}
