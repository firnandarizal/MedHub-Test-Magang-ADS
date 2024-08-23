// category_item.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Color> gradientColors;

  const CategoryItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.gradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 24, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: GoogleFonts.overpass(fontSize: 14, color: Colors.black),
        ),
      ],
    );
  }
}
