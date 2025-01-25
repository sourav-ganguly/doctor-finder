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
