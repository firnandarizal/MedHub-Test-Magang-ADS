// widgets/payment_summary.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentSummary extends StatelessWidget {
  const PaymentSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Summary',
          style: GoogleFonts.overpass(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: const Color(0xff090F47)),
        ),
        const SizedBox(height: 8),
        const SummaryRow(label: 'Order Total', value: 'Rp 228.800'),
        const SummaryRow(label: 'Items Discount', value: '- Rp 28.800'),
        const SummaryRow(label: 'Coupon Discount', value: '- Rp 15.800'),
        const SummaryRow(label: 'Shipping', value: 'Free'),
        const Divider(),
        const SummaryRow(
          label: 'Total',
          value: 'Rp 185.000',
          isTotal: true,
        ),
      ],
    );
  }
}

class SummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isTotal;

  const SummaryRow({
    Key? key,
    required this.label,
    required this.value,
    this.isTotal = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: GoogleFonts.overpass(
                fontSize: isTotal ? 18 : 14,
                fontWeight: isTotal ? FontWeight.w600 : FontWeight.normal,
                color: const Color(0xff090F47)),
          ),
          Text(
            value,
            style: GoogleFonts.overpass(
              fontSize: isTotal ? 18 : 14,
              fontWeight: isTotal ? FontWeight.w600 : FontWeight.normal,
              color: isTotal ? const Color(0xff090F47) : const Color(0xff090F47),
            ),
          ),
        ],
      ),
    );
  }
}
