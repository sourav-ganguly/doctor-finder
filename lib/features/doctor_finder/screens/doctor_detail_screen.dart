import 'package:flutter/material.dart';

import '../models/doctor_data_model.dart';

class DoctorDetailScreen extends StatelessWidget {
  final DoctorDataModel doctor;

  const DoctorDetailScreen({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              doctor.name,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            _buildInfoSection(
              context,
              title: 'Speciality',
              content: doctor.speciality,
            ),
            _buildInfoSection(
              context,
              title: 'Educational Degree',
              content: doctor.educationalDegree,
            ),
            _buildInfoSection(
              context,
              title: 'Location',
              content: doctor.location,
            ),
            _buildInfoSection(
              context,
              title: 'About',
              content: doctor.description,
            ),
            if (doctor.phoneNumber != null)
              _buildInfoSection(
                context,
                title: 'Contact',
                content: doctor.phoneNumber!,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection(
    BuildContext context, {
    required String title,
    required String content,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
          const SizedBox(height: 4),
          Text(
            content,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
