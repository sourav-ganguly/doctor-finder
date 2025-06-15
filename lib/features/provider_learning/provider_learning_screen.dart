import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
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
          _StateProviderNotifierExampleView(),
          SizedBox(height: 20),
          _FutureProviderExampleView(),
          SizedBox(height: 20),
          _StreamProviderExampleView(),
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

class _StateProviderNotifierExampleView extends ConsumerWidget {
  const _StateProviderNotifierExampleView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final currentTime = ref.watch(clockProvider);
    final timeFormatted = DateFormat.Hms().format(currentTime);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'State Provider Notifier Example',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              timeFormatted,
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
                ref.read(clockProvider.notifier).pause();
              },
              child: const Text('Pause Clock'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Reset to original message
                ref.read(clockProvider.notifier).resume();
              },
              child: const Text('Resume Clock'),
            ),
          ],
        ),
      ),
    );
  }
}

class _FutureProviderExampleView extends ConsumerWidget {
  const _FutureProviderExampleView();


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoAsync = ref.watch(todoFutureProvider);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'Future Provider Example.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            todoAsync.when(
              data: (todo) => Text(
              todo.title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
              error: (error, stackTrace) => Text('Error: $error'),
              loading: () => const CircularProgressIndicator(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // reload the value of the todoFutureProvider
              },
              child: const Text('Refresh Todo'),
            ),
          ],
        ),
      ),
    );
  }
}

class _StreamProviderExampleView extends ConsumerWidget {
  const _StreamProviderExampleView();


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    ref.listen(sampleStreamProvider, (previous, next) {
      if (next.hasError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error in the stream: ${next.error}')),
        );
      }
    });

    final helloWorldStreamAsync = ref.watch(sampleStreamProvider);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'Stream Provider Example.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            helloWorldStreamAsync.when(
              data: (data) => Text(
              data,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
              error: (error, stackTrace) => Text('Error: $error'),
              loading: () => const CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}