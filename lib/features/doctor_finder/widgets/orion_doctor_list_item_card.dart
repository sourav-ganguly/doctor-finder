import 'package:flutter/material.dart';

import '../models/doctor_data_model.dart';
import '../screens/doctor_detail_screen.dart';

class OrionDoctorListItemCard extends StatelessWidget {
  final DoctorDataModel doctor;

  const OrionDoctorListItemCard({
    super.key,
    required this.doctor,
  });

  String _doctorLocation() {
    if (doctor.clinics.isNotEmpty) {
      return doctor.clinics.first;
    } else if (doctor.chambers.isNotEmpty) {
      return doctor.chambers.first;
    }
    return doctor.location;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DoctorDetailScreen(doctor: doctor),
            ),
          );
        },
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
                doctor.title,
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
                    doctor.phoneNumber ?? '1232156',
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
                      _doctorLocation(),
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
