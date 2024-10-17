import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_svg/svg.dart';

class ImageDisplay extends StatelessWidget {
  const ImageDisplay({
    super.key,
    this.image,
    required this.deleteImage,
    this.url,
  });
  final File? image;
  final Function deleteImage;
  final String? url;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(9.71),
            child: Image.network(
              url!,
              height: 66,
              width: 66,
            ),
          ),
        ),
        Positioned(
          top: -2,
          left: 50,
          child: GestureDetector(
            onTap: () {
              deleteImage();
            },
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle, // Make it circular
              ),
              padding: const EdgeInsets.all(5),
              child: SvgPicture.asset(
                'assets/icons/Group_54.svg',
                width: 18,
                height: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
