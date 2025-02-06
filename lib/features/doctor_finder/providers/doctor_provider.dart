import 'dart:developer' as developer;

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/sample_doctor.dart';
import '../repositories/doctor_repository.dart';

final doctorRepositoryProvider = Provider((ref) => DoctorRepository());

final doctorSearchProvider = StateProvider<String>((ref) => '');

final doctorListProvider = FutureProvider.autoDispose
    .family<List<SampleDoctor>, String>((ref, query) async {
  developer.log(
    'Doctor search initiated with query: "$query"',
    name: 'DoctorProvider',
  );

  // If query is empty, return empty list immediately
  if (query.trim().isEmpty) {
    developer.log(
      'Empty query detected, returning empty list',
      name: 'DoctorProvider',
    );
    return [];
  }

  final repository = ref.read(doctorRepositoryProvider);
  final searchLower = query.toLowerCase();

  try {
    developer.log(
      'Fetching doctors from repository with query: $searchLower',
      name: 'DoctorProvider',
    );
    final results = await repository.getDoctors(location: searchLower);
    developer.log(
      'Successfully retrieved ${results.length} doctors for query: $searchLower',
      name: 'DoctorProvider',
    );
    return results;
  } catch (e, stackTrace) {
    developer.log(
      'Error fetching doctors',
      name: 'DoctorProvider',
      error: e.toString(),
      stackTrace: stackTrace,
    );
    throw Exception('Failed to fetch doctors: $e');
  }
});
