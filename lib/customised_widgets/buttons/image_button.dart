import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({Key? key, required this.image, this.onTap, this.size})
      : super(key: key);
  final String image;
  final Function()? onTap;
  final Size? size;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        image,
        width: size?.width,
        height: size?.height,
      ),
    );
  }
}
