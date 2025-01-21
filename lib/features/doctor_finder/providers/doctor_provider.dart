import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/sample_doctor.dart';

final doctorSearchProvider = StateProvider<String>((ref) => '');

final doctorListProvider = FutureProvider.autoDispose
    .family<List<SampleDoctor>, String>((ref, query) async {
  // If query is empty, return empty list immediately
  if (query.trim().isEmpty) {
    return [];
  }

  // Simulate network delay only for actual searches
  await Future.delayed(const Duration(seconds: 2));

  // Get sample doctors
  final doctors = SampleDoctor.getSampleDoctors();

  // Filter doctors based on query
  return doctors.where((doctor) {
    final searchLower = query.toLowerCase();
    return doctor.name.toLowerCase().contains(searchLower) ||
        doctor.speciality.toLowerCase().contains(searchLower) ||
        doctor.location.toLowerCase().contains(searchLower);
  }).toList();
});
