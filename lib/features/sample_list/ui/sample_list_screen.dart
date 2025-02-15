import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/sample_list_provider.dart';

class SampleListScreen extends ConsumerWidget {
  const SampleListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sampleList = ref.watch(sampleListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample List'),
      ),
      body: ListView.builder(
        itemCount: sampleList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(sampleList[index]),
            leading: const Icon(Icons.arrow_right),
            onTap: () {
              // Handle item tap
            },
          );
        },
      ),
    );
  }
}
