import 'dart:async';

import 'package:doctor_finder/features/provider_learning/todo_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart' as intl;




final simpleProvider = Provider<String>((ref) {
  return 'A simple provider to get a value!';
});

final dateFormatterProvider = Provider<intl.DateFormat>((ref) {
  return intl.DateFormat('dd/MM/yyyy');
});

// Simple state provider for hello world message
final simpleStateProvider = StateProvider<String>((ref) {
  return 'Hello World!';
});

// Alternative: StateNotifierProvider for more complex state management
class HelloWorldNotifier extends StateNotifier<String> {
  HelloWorldNotifier() : super('Hello World!');

  void updateMessage(String newMessage) {
    state = newMessage;
  }

  void resetMessage() {
    state = 'Hello World!';
  }
}

final helloWorldNotifierProvider = StateNotifierProvider<HelloWorldNotifier, String>((ref) {
  return HelloWorldNotifier();
}); 

class Clock extends StateNotifier<DateTime> {
  Clock() : super(DateTime.now()) {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!isPaused) {  
        state = DateTime.now();
      }
    });
  }

  late final Timer _timer;
  
  bool isPaused = false;

  void pause() {
    isPaused = true;
  }

  void resume() {
    isPaused = false;
  }

  // 4. cancel the timer when finished
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}

final clockProvider = StateNotifierProvider<Clock, DateTime>((ref) {
  return Clock();
});


final todoRepositoryProvider = Provider<TodoRepository>((ref) {
  return TodoRepository();
});

final todoFutureProvider = FutureProvider<Todo>((ref) {
  final todoRepository = ref.read(todoRepositoryProvider);
  return todoRepository.getTodo();
});

final sampleStreamProvider = StreamProvider<String>((ref) {
  return Stream.periodic(const Duration(seconds: 1), (count) {
    if (count % 10 == 0) {
      throw Exception('Error in the stream');
    } else {
      return 'Hello World! $count';
    }
  });
});