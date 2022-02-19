import 'package:flutter/material.dart';
import 'package:shack15/customised_widgets/buttons/image_button.dart';
import 'package:shack15/customised_widgets/headers/primary_header.dart';
import 'package:shack15/customised_widgets/text/tertiary_text.dart';

class Token extends StatelessWidget {
  const Token({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PrimaryHeader(text: "Send a token of gratitude"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                  child: ImageButton(
                onTap: () {},
                image: "assets/token/token.png",
              )),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                  flex: 2,
                  child: TertiaryText(
                      weight: FontWeight.w400,
                      size: 14,
                      text:
                          "We believe in helping others as much as we can, as well as recognizing those that help the community. Toekns help recognize the people who go above and beyone. Send your first token"))
            ],
          ),
        )
      ],
    );
  }
}
