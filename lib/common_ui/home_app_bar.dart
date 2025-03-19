import 'package:doctor_finder/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class OrionHomeAppBar extends StatelessWidget {
  final bool showBackButton;

  const OrionHomeAppBar({
    super.key,
    this.showBackButton = false,
  });

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
      automaticallyImplyLeading: showBackButton,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            )
          : null,
      flexibleSpace: FlexibleSpaceBar(
        title: Image.asset(
          'assets/find_the_doc.png',
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
