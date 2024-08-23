import 'package:flutter/material.dart';

class Category {
  final String title;
  final IconData icon;
  final List<Color> gradientColors;

  Category({
    required this.title,
    required this.icon,
    required this.gradientColors,
  });
}