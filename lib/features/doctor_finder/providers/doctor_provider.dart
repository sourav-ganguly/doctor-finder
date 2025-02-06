import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/sample_doctor.dart';
import '../repositories/doctor_repository.dart';

final doctorRepositoryProvider = Provider((ref) => DoctorRepository());

final doctorSearchProvider = StateProvider<String>((ref) => '');

final doctorListProvider = FutureProvider.autoDispose
    .family<List<SampleDoctor>, String>((ref, query) async {
  // If query is empty, return empty list immediately
  if (query.trim().isEmpty) {
    return [];
  }

  final repository = ref.read(doctorRepositoryProvider);
  final searchLower = query.toLowerCase();

  try {
    return await repository.getDoctors(location: searchLower);
  } catch (e) {
    throw Exception('Failed to fetch doctors: $e');
  }
});
