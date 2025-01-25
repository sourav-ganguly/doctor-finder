import 'package:doctor_finder/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class OrionHomeAppBar extends StatelessWidget {
  const OrionHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      pinned: false,
      stretch: true,
      toolbarHeight: kToolbarHeight + 20,
      elevation: 8,
      shadowColor: Colors.black,
      backgroundColor: Colors.white,
      foregroundColor: OrionColors.textBrand,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        title: Image.asset(
          'assets/logo_top_2.png',
          width: 180,
          height: 45,
        ),
        background: Container(
          color: Colors.white,
        ),
        stretchModes: const [
          StretchMode.zoomBackground,
        ],
      ),
    );
  }
}

class SliverAppbarScreen extends StatelessWidget {
  final List<Color> randomColors = Colors.primaries;

  const SliverAppbarScreen({super.key});

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
          const OrionHomeAppBar(),
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
