import 'package:flutter/material.dart';
import '../models/emergency_guide.dart';
import '../theme/app_theme.dart';

class EmergencyData {
  static const List<EmergencyCategory> categories = [
    EmergencyCategory(
      id: 'choking',
      title: 'Étouffement',
      icon: Icons.air,
      color: AppColors.primary,
    ),
    EmergencyCategory(
      id: 'burn',
      title: 'Brûlure',
      icon: Icons.local_fire_department,
      color: AppColors.warning,
    ),
    EmergencyCategory(
      id: 'bleeding',
      title: 'Saignement',
      icon: Icons.bloodtype,
      color: AppColors.primary,
    ),
    EmergencyCategory(
      id: 'faint',
      title: 'Malaise',
      icon: Icons.sick,
      color: AppColors.secondary,
    ),
    EmergencyCategory(
      id: 'fracture',
      title: 'Fracture',
      icon: Icons.accessibility_new,
      color: AppColors.secondary,
    ),
    EmergencyCategory(
      id: 'electrocution',
      title: 'Électrocution',
      icon: Icons.bolt,
      color: AppColors.warning,
    ),
    EmergencyCategory(
      id: 'cpr',
      title: 'RCP',
      icon: Icons.favorite,
      color: AppColors.primary,
    ),
  ];
}