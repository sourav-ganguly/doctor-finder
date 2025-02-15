import 'package:doctor_finder/features/demo_screen/screens/button_demo_screen.dart';
import 'package:doctor_finder/features/demo_screen/screens/sliver_appbar_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/demo_list_item.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          DemoListItem(
            title: 'My Appointments',
            subtitle: 'View my appointments',
            onTap: () {
              ButtonDemoScreen.open(context);
            },
          ),
          DemoListItem(
            title: 'My Doctors',
            subtitle: 'View favorite doctors',
            onTap: () {
              ButtonDemoScreen.open(context);
            },
          ),
          DemoListItem(
            title: 'My Reviews',
            subtitle: 'View my reviews',
            onTap: () {
              ButtonDemoScreen.open(context);
            },
          ),
          DemoListItem(
            title: 'Settings',
            subtitle: 'Manage my settings',
            onTap: () {
              SliverAppbarScreen.open(context);
            },
          ),
          // Add more demo items here
        ],
      ),
    );
  }
}
