import 'package:flutter/material.dart';
import 'package:shack15/customised_widgets/buttons/image_button.dart';

class NewsBanner extends StatelessWidget {
  const NewsBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ImageButton(
                onTap: () {},
                size: const Size(40, 40),
                image: "assets/chevron_up.png",
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_outline,
                    size: 40,
                  ))
            ],
          ),
        ),
        Image.asset(
          "assets/banner.png",
          width: double.infinity,
        ),
      ],
    );
  }
}
