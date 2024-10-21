import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final bool useCircleAvatar; // New parameter to control CircleAvatar usage
  final ImageProvider? backgroundImage; // New optional parameter for image

  const CustomContainer({
    Key? key,
    this.height = 28.0, // Default height
    this.width = 28.0, // Default width
    this.color = const Color(0xFF519FE8), // Default color
    this.useCircleAvatar = true, // Default to true for CircleAvatar
    this.backgroundImage, // Optional image parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return useCircleAvatar // Check if CircleAvatar should be used
        ? CircleAvatar(
            radius: height / 2, // Adjust radius based on height
            backgroundColor: color,
            backgroundImage: backgroundImage, // Set the image if provided
          )
        : Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          );
  }
}
