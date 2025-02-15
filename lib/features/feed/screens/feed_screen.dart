import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/feed_provider.dart';
import '../widgets/health_fact_card.dart';

class FeedScreen extends ConsumerWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final healthFactsAsync = ref.watch(feedListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Health Facts Feed'),
      ),
      body: healthFactsAsync.when(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stack) => Center(
          child: Text('Error: ${error.toString()}'),
        ),
        data: (healthFacts) => ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: healthFacts.length,
          itemBuilder: (context, index) => HealthFactCard(
            fact: healthFacts[index],
          ),
        ),
      ),
    );
  }
}
