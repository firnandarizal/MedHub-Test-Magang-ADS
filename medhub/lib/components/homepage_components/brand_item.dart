// brand_item.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrandItem extends StatelessWidget {
  final String name;
  final String imagePath;

  const BrandItem({
    Key? key,
    required this.name,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: GoogleFonts.overpass(fontSize: 14, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
