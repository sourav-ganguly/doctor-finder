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