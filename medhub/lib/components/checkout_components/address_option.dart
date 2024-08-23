import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressOption extends StatelessWidget {
  final String title;
  final String address;
  final bool selected;
  final VoidCallback onEdit;

  AddressOption({
    required this.title,
    required this.address,
    required this.selected,
    required this.onEdit,
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
          Icon(
            selected ? Icons.radio_button_checked : Icons.radio_button_off,
            color: Colors.teal,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  address,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.grey),
            onPressed: onEdit,
          ),
        ],
      ),
    );
  }
}
