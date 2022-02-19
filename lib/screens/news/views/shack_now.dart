import 'package:flutter/material.dart';
import 'package:shack15/customised_widgets/headers/primary_header.dart';
import 'package:shack15/customised_widgets/text/primary_text.dart';
import 'package:shack15/screens/news/models/shack_now_model.dart';

class ShackNow extends StatelessWidget {
  ShackNow({Key? key}) : super(key: key);
  final List<ShackNowModel> shacknowUsers = [
    ShackNowModel(image: "assets/shack_now/user1.png"),
    ShackNowModel(image: "assets/shack_now/user2.png"),
    ShackNowModel(image: "assets/shack_now/user3.png"),
    ShackNowModel(image: "assets/shack_now/user4.png"),
    ShackNowModel(image: "assets/shack_now/user5.png"),
    ShackNowModel(image: "assets/shack_now/user6.png"),
    ShackNowModel(image: "assets/shack_now/user7.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const PrimaryHeader(text: "In Shack Now"),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 15),
            itemCount: shacknowUsers.length,
            itemBuilder: (context, index) {
              ShackNowModel shackNowUserModel = shacknowUsers[index];
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: GestureDetector(
                  child: CircleAvatar(
                      radius: 50,
                      foregroundImage: AssetImage(shackNowUserModel.image)),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            ShackNowModel(
                image: "assets/shack_now/coffee_tea.png",
                title: "COFFEE & TEA"),
            ShackNowModel(
                image: "assets/shack_now/breakfast.png", title: "BREAKFAST"),
            ShackNowModel(
                image: "assets/shack_now/coffee_tea.png", title: "COFFEE & TEA")
          ]
              .map((e) => Expanded(
                      child: GestureDetector(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          e.image,
                          // height: 10,
                          fit: BoxFit.fill,
                        ),
                        PrimaryText(
                          text: e.title!,
                          weight: FontWeight.w500,
                        )
                      ],
                    ),
                  )))
              .toList(),
        )
      ],
    );
  }
}
