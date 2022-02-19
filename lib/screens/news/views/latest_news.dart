import 'package:flutter/material.dart';
import 'package:shack15/customised_widgets/headers/primary_header.dart';
import 'package:shack15/customised_widgets/text/primary_text.dart';
import 'package:shack15/customised_widgets/text/tertiary_text.dart';
import 'package:shack15/screens/news/models/news_model.dart';

class LatestNews extends StatelessWidget {
  LatestNews({Key? key}) : super(key: key);
  final List<NewsModel> latestNews = [
    NewsModel(
        image: "assets/news/news_image.png",
        heading: "New Opening Hours",
        body: "We are now open until 8pm on Mondays starting next week"),
    NewsModel(
        image: "assets/news/news_image.png",
        heading: "Spring Cocktails!",
        body:
            "Sping is upon us and now we have a new menu. Try our spritz and new selection of non alcaholics."),
    NewsModel(
        image: "assets/news/news_image.png",
        heading: "Spring Cocktails!",
        body:
            "Sping is upon us and now we have a new menu. Try our spritz and new selection of non alcaholics.")
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PrimaryHeader(text: "Latest News"),
        ...latestNews.map((e) => Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        e.image,
                        width: 100,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          PrimaryText(
                            text: e.heading,
                            size: 20,
                            weight: FontWeight.bold,
                          ),
                          TertiaryText(
                            text: e.body,
                            size: 14,
                          )
                        ],
                      )),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    iconSize: 40,
                    icon: const Icon(Icons.chevron_right))
              ],
            )),
      ],
    );
  }
}
