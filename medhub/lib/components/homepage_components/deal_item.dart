// deal_item.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DealItem extends StatelessWidget {
  final String title;
  final String price;
  final double rating;
  final String imagePath;

  const DealItem({
    Key? key,
    required this.title,
    required this.price,
    required this.rating,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath),
          const SizedBox(height: 8),
          Text(
            title,
            style: GoogleFonts.overpass(fontSize: 14, color: Colors.black),
          ),
          const SizedBox(height: 4),
          Text(
            price,
            style:
                GoogleFonts.overpass(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(Icons.star, size: 16, color: Colors.amber),
              const SizedBox(width: 4),
              Text(
                rating.toString(),
                style: GoogleFonts.overpass(fontSize: 14, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
