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
    // final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Text(
            //   'Find a Doctor',
            //   style: theme.textTheme.titleLarge,
            // ),
            // const SizedBox(height: 16),
            TextField(
              controller: controller,
              maxLines: 5,
              decoration: InputDecoration(
                hintText:
                    'Describe your symptoms or the type of doctor you\'re looking for...',
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
            // TextButton(
            //   onPressed: onSearchPressed,
            //   style: TextButton.styleFrom(
            //     backgroundColor: theme.primaryColor,
            //     foregroundColor: Colors.white,
            //     textStyle: theme.textTheme.titleMedium,
            //     padding: const EdgeInsets.symmetric(vertical: 16),
            //   ),
            //   child: const Text('Search Doctors'),
            // ),
          ],
        ),
      ),
    );
  }
}
