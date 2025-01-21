import 'package:flutter/material.dart';

import '../models/sample_doctor.dart';

class OrionDoctorListItemCard extends StatelessWidget {
  final SampleDoctor doctor;

  const OrionDoctorListItemCard({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              doctor.name,
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              doctor.speciality,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.primaryColor,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.phone, size: 16),
                const SizedBox(width: 8),
                Text(
                  doctor.phoneNumber,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.location_on, size: 16),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    doctor.location,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
