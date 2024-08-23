// widgets/coupon_section.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CouponSection extends StatelessWidget {
  const CouponSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Row(
        children: [
          const Icon(Icons.discount, color: Colors.teal),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              '1 Coupon applied',
              style: GoogleFonts.overpass(
                color: Colors.teal,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
