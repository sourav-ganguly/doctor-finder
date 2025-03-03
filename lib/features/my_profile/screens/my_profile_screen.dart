import 'package:flutter/material.dart';

import '../widgets/demo_list_item.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'made with ❤️ by xyz',
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 12,
                ),
              ),
            ),
          ),
          ListView(
            padding: const EdgeInsets.all(16),
            children: [
              DemoListItem(
                title: 'My Appointments',
                subtitle: 'View my appointments',
                onTap: () {
                  // ButtonDemoScreen.open(context);
                },
              ),
              DemoListItem(
                title: 'My Doctors',
                subtitle: 'View favorite doctors',
                onTap: () {
                  // ButtonDemoScreen.open(context);
                },
              ),
              DemoListItem(
                title: 'My Reviews  ',
                subtitle: 'View my reviews',
                onTap: () {
                  // ButtonDemoScreen.open(context);
                },
              ),
              DemoListItem(
                title: 'Settings',
                subtitle: 'Manage my settings',
                onTap: () {
                  // SliverAppbarScreen.open(context);
                },
              ),
              // Add more demo items here
            ],
          ),
        ],
      ),
    );
  }
}
