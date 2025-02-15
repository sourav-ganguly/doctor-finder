import 'package:doctor_finder/common_ui/home_app_bar.dart';
import 'package:flutter/material.dart';

class SliverAppbarScreen extends StatelessWidget {
  final List<Color> randomColors = Colors.primaries;

  const SliverAppbarScreen({
    super.key,
  });

  static void open(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const SliverAppbarScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const OrionHomeAppBar(showBackButton: true),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Card(
                  color: randomColors[index % randomColors.length],
                  margin: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100.0,
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        'Item ${index + 1}',
                        style: const TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
