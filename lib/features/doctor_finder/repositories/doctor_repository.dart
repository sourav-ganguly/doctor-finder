import 'package:dio/dio.dart';

import '../models/sample_doctor.dart';

class DoctorRepository {
  static const String _baseUrl = 'https://doc-finder-backend.onrender.com';
  final Dio _dio;

  DoctorRepository() : _dio = Dio(BaseOptions(
    baseUrl: _baseUrl,
    headers: {'accept': 'application/json'},
  ));

  Future<List<SampleDoctor>> getDoctors({
    required String location,
    int skip = 0,
    int limit = 10,
  }) async {
    try {
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
        return jsonList.map((json) => SampleDoctor.fromJson(json)).toList();
      } else {
        throw DioException(
          requestOptions: response.requestOptions,
          message: 'Failed to load doctors',
        );
      }
    } on DioException catch (e) {
      throw Exception('Failed to fetch doctors: ${e.message}');
    }
  }
} 