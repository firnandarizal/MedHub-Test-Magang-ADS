// widgets/package_option.dart

import 'package:flutter/material.dart';

class PackageOption extends StatelessWidget {
  final String text;
  final Color color;

  const PackageOption({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
      ),
    );
  }
}
