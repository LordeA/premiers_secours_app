import 'package:flutter/material.dart';
import '../data/emergency_data.dart';
import '../theme/app_theme.dart';
import '../widgets/sos_button.dart';
import '../widgets/emergency_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Premiers Secours'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline),
            tooltip: 'Fiche santé',
            onPressed: () {
              // Sera relié au jour 8 (health_profile_screen)
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Zone d'état hors-ligne
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: AppColors.success.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.wifi_off, size: 16, color: AppColors.success),
                    SizedBox(width: 6),
                    Text(
                      'Disponible hors-ligne',
                      style: TextStyle(
                        color: AppColors.success,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Bouton SOS central
              Center(
                child: SosButton(
                  onTap: () {
                    // Sera relié au jour 6-7 (cpr_timer_screen ou guide rapide)
                  },
                ),
              ),
              const SizedBox(height: 8),
              const Center(
                child: Text(
                  'En cas d\'urgence vitale, appuyez ici',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
              const SizedBox(height: 32),

              // Titre section
              const Text(
                'Situations d\'urgence',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              // Grille des catégories
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: EmergencyData.categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  final category = EmergencyData.categories[index];
                  return EmergencyCard(
                    category: category,
                    onTap: () {
                      // Sera relié au jour 5 (guide_detail_screen)
                    },
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}