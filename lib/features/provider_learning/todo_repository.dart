import 'package:dio/dio.dart';
import 'dart:developer' as developer;


class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo({required this.userId, required this.id, required this.title, required this.completed});
}

class TodoRepository { 

  static const String _baseUrl = 'https://jsonplaceholder.typicode.com';
  final Dio _dio;

  TodoRepository()
      : _dio = Dio(BaseOptions(
          baseUrl: _baseUrl,
        )) {
    _dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (object) {
          developer.log(object.toString(), name: 'TodoRepository');
        }));
  }

  Future<Todo> getTodo() async {
    final response = await _dio.get('/todos/1');

    await Future.delayed(const Duration(seconds: 3));

    if (response.statusCode != 200) {
      throw Exception('Failed to load todo');
    }
    
    return Todo(
      userId: response.data['userId'],
      id: response.data['id'],
      title: response.data['title'],
      completed: response.data['completed'],
    );
  }
}