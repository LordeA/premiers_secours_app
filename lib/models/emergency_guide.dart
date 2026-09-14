import 'package:flutter/material.dart';

class EmergencyCategory {
  final String id;
  final String title;
  final IconData icon;
  final Color color;

  const EmergencyCategory({
    required this.id,
    required this.title,
    required this.icon,
    required this.color,
  });
}