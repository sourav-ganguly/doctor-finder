import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'hello_world_provider.dart';

class ProviderLearningScreen extends ConsumerWidget {
  const ProviderLearningScreen({super.key});

    static void open(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (_) => const ProviderLearningScreen(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Hello World'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const <Widget>[
          SizedBox(height: 20),
          _ProviderExampleView(),
          SizedBox(height: 20),
          _StateProviderExampleView(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

// Example how to use Provider
class _ProviderExampleView extends ConsumerWidget {
  const _ProviderExampleView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final simpleText = ref.watch(simpleProvider);
    final dateFormatter = ref.watch(dateFormatterProvider);
    return  Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'Provider Example',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              simpleText,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              dateFormatter.format(DateTime.now()),
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StateProviderExampleView extends ConsumerWidget {
  const _StateProviderExampleView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the hello world state
    final helloWorldMessage = ref.watch(simpleStateProvider);
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'State Provider Example',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              helloWorldMessage,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Update the hello world message
                ref.read(simpleStateProvider.notifier).state = 'Hello from Riverpod!';
              },
              child: const Text('Change Message'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Reset to original message
                ref.read(simpleStateProvider.notifier).state = 'Hello World!';
              },
              child: const Text('Reset Message'),
            ),
          ],
        ),
      ),
    );
  }
} 