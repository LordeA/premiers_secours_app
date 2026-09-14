import 'package:flutter/material.dart';
import '../data/emergency_data.dart';
import '../widgets/emergency_card.dart';
import 'guide_detail_screen.dart';

class GuideListScreen extends StatelessWidget {
  const GuideListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Toutes les situations')),
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.all(20),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => GuideDetailScreen(category: category),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}