import 'package:flutter/material.dart';
import '../models/emergency_guide.dart';

class GuideDetailScreen extends StatelessWidget {
  final EmergencyCategory category;

  const GuideDetailScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.title)),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: category.steps.length,
        itemBuilder: (context, index) {
          final step = category.steps[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: category.color,
                child: Text('${index + 1}',
                    style: const TextStyle(color: Colors.white)),
              ),
              title: Text(step.title,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(step.description),
            ),
          );
        },
      ),
    );
  }
}