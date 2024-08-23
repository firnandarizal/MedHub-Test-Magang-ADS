// widgets/cart_item.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String imagePath;

  const CartItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(imagePath)),
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.overpass(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: const Color(0xff090F47)),
              ),
              Text(
                subtitle,
                style: GoogleFonts.overpass(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                price,
                style: GoogleFonts.overpass(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: const Color(0xff090F47)),
              ),
            ],
          ),
        ),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.remove_circle_outline, color: Colors.teal),
              onPressed: () {},
            ),
            Text(
              '1',
              style: GoogleFonts.overpass(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.add_circle_outline, color: Colors.teal),
              onPressed: () {},
            ),
          ],
        ),
        IconButton(
          icon: const Icon(Icons.close, color: Colors.grey),
          onPressed: () {},
        ),
      ],
    );
  }
}
