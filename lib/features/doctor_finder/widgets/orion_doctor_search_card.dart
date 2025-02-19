import 'package:doctor_finder/common_ui/button/orion_buttons.dart';
import 'package:flutter/material.dart';

class OrionDoctorSearchCard extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSearchPressed;

  const OrionDoctorSearchCard({
    super.key,
    required this.controller,
    required this.onSearchPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: controller,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Tell me a bit about your symptoms...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.grey[50],
              ),
            ),
            const SizedBox(height: 16),
            OrionAccentButton(
              label: 'Search Doctors',
              variant: ButtonSizeVariant.large,
              onPressed: onSearchPressed,
            ),
          ],
        ),
      ),
    );
  }
}
