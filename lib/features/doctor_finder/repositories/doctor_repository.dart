import 'dart:developer' as developer;

import 'package:dio/dio.dart';

import '../models/sample_doctor.dart';

class DoctorRepository {
  static const String _baseUrl = 'https://doc-finder-backend.onrender.com';
  final Dio _dio;

  DoctorRepository()
      : _dio = Dio(BaseOptions(
          baseUrl: _baseUrl,
          headers: {'accept': 'application/json'},
        )) {
    _dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (object) {
          developer.log(object.toString(), name: 'DoctorRepository');
        }));
  }

  Future<List<SampleDoctor>> getDoctors({
    required String location,
    int skip = 0,
    int limit = 10,
  }) async {
    try {
      developer.log(
        'Fetching doctors with location: $location, skip: $skip, limit: $limit',
        name: 'DoctorRepository',
      );

      final response = await _dio.get(
        '/doctors/',
        queryParameters: {
          'skip': skip,
          'limit': limit,
          'location': location,
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data;
        final doctors =
            jsonList.map((json) => SampleDoctor.fromJson(json)).toList();
        developer.log(
          'Successfully fetched ${doctors.length} doctors',
          name: 'DoctorRepository',
        );
        return doctors;
      } else {
        developer.log(
          'Error fetching doctors: ${response.statusCode} - ${response.statusMessage}',
          name: 'DoctorRepository',
          error: response.data,
        );
        throw DioException(
          requestOptions: response.requestOptions,
          message: 'Failed to load doctors',
        );
      }
    } on DioException catch (e) {
      developer.log(
        'DioException while fetching doctors',
        name: 'DoctorRepository',
        error: e.message,
        stackTrace: e.stackTrace,
      );
      throw Exception('Failed to fetch doctors: ${e.message}');
    }
  }
}
