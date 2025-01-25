import 'package:doctor_finder/features/demo_screen/screens/button_demo_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/demo_list_item.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Components Demo'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          DemoListItem(
            title: 'Button Demo',
            subtitle: 'Various button styles and sizes',
            onTap: () {
              ButtonDemoScreen.open(context);
            },
          ),
          // Add more demo items here
        ],
      ),
    );
  }
}
