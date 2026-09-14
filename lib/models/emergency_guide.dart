import 'package:flutter/material.dart';

class GuideStep {
  final String title;
  final String description;
  final IconData icon;

  const GuideStep({
    required this.title,
    required this.description,
    required this.icon,
  });
}

class EmergencyCategory {
  final String id;
  final String title;
  final String shortDescription;
  final IconData icon;
  final Color color;
  final List<GuideStep> steps;

  const EmergencyCategory({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.icon,
    required this.color,
    required this.steps,
  });
}