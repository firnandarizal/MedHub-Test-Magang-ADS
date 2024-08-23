// widgets/product_item.dart

import 'package:flutter/material.dart';

Widget productItem(
    String title, String price, String badge, double rating, String imagePath) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (badge.isNotEmpty)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: badge == 'SALE' ? Colors.red : Colors.orange,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Text(
              badge,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
              color: Colors.grey[200],
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(8),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: 14)),
              const SizedBox(height: 4),
              Text(price,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow[700], size: 16),
                  const SizedBox(width: 4),
                  Text(rating.toString()),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
