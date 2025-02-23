import 'dart:developer' as developer;

import 'package:dio/dio.dart';

import '../models/doctor_data_model.dart';

class DoctorRepository {
  static const String _baseUrl = 'https://doc-finder-backend.onrender.com';
  final Dio _dio;

  DoctorRepository()
      : _dio = Dio(BaseOptions(
          baseUrl: _baseUrl,
          headers: {
            'accept': 'application/json',
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
            'Access-Control-Allow-Headers':
                'Origin, Content-Type, X-Auth-Token',
          },
        )) {
    _dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (object) {
          developer.log(object.toString(), name: 'DoctorRepository');
        }));
  }

  Future<List<DoctorDataModel>> getDoctors({
    required String search,
    int skip = 0,
    int limit = 30,
  }) async {
    try {
      developer.log(
        'Fetching doctors with search: $search, skip: $skip, limit: $limit',
        name: 'DoctorRepository',
      );

      final response = await _dio.get(
        '/doctors/',
        queryParameters: {
          'skip': skip,
          'limit': limit,
          'search': search,
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data;
        final doctors =
            jsonList.map((json) => DoctorDataModel.fromJson(json)).toList();
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
