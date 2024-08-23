import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentOption extends StatelessWidget {
  final String title;
  final String iconPath;
  final bool selected;

  PaymentOption({
    required this.title,
    required this.iconPath,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: selected ? Colors.teal : Colors.grey[300]!),
        color: selected ? Colors.teal.withOpacity(0.1) : Colors.white,
      ),
      child: Row(
        children: [
          Image.network(iconPath, width: 32, height: 32),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          Icon(
            selected ? Icons.radio_button_checked : Icons.radio_button_off,
            color: Colors.teal,
          ),
        ],
      ),
    );
  }
}
