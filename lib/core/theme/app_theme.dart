import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = OrionColors.surfaceBrand;
  static const Color secondaryColor = OrionColors.surface1;
  static const Color backgroundColor = OrionColors.surfaceBase;
  static const Color primaryTextColor = OrionColors.textBrand;
  static const Color secondaryTextColor = OrionColors.textBody;

  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: secondaryColor,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: primaryColor,
        unselectedItemColor: secondaryTextColor,
      ),
      cardTheme: const CardTheme(
        color: OrionColors.surfaceCard,
        elevation: 2,
        shadowColor: OrionColors.surfaceTransparent20,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          side: BorderSide(color: OrionColors.neutral100, width: 1),
        ),
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: primaryColor,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: primaryTextColor,
        ),
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
        titleSmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.black87,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Colors.black87,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: Colors.black87,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
        labelMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
        labelSmall: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
      ),
    );
  }
}

class OrionColors {
  OrionColors._internal();

  // Neutral Colors
  static const Color neutral0 = Color.fromRGBO(255, 255, 255, 1);
  static const Color neutral25 = Color.fromRGBO(247, 247, 247, 1);
  static const Color neutral50 = Color.fromRGBO(242, 242, 242, 1);
  static const Color neutral100 = Color.fromRGBO(230, 230, 230, 1);
  static const Color neutral200 = Color.fromRGBO(204, 204, 204, 1);
  static const Color neutral300 = Color.fromRGBO(179, 179, 179, 1);
  static const Color neutral400 = Color.fromRGBO(153, 153, 153, 1);
  static const Color neutral500 = Color.fromRGBO(128, 128, 128, 1);
  static const Color neutral600 = Color.fromRGBO(102, 102, 102, 1);
  static const Color neutral700 = Color.fromRGBO(77, 77, 77, 1);
  static const Color neutral800 = Color.fromRGBO(51, 51, 51, 1);
  static const Color neutral900 = Color.fromRGBO(26, 26, 26, 1);
  static const Color neutral1000 = Color.fromRGBO(0, 0, 0, 1);

  // Litmus Colors
  static const Color litmus25 = Color.fromRGBO(241, 243, 254, 1);
  static const Color litmus50 = Color.fromRGBO(231, 234, 253, 1);
  static const Color litmus100 = Color.fromRGBO(207, 214, 252, 1);
  static const Color litmus200 = Color.fromRGBO(160, 173, 248, 1);
  static const Color litmus300 = Color.fromRGBO(112, 132, 245, 1);
  static const Color litmus400 = Color.fromRGBO(64, 91, 242, 1);
  static const Color litmus500 = Color.fromRGBO(17, 50, 238, 1);
  static const Color litmus550 = Color.fromRGBO(15, 45, 215, 1);
  static const Color litmus600 = Color.fromRGBO(13, 40, 191, 1);
  static const Color litmus700 = Color.fromRGBO(10, 30, 143, 1);
  static const Color litmus800 = Color.fromRGBO(7, 20, 95, 1);
  static const Color litmus900 = Color.fromRGBO(3, 10, 58, 1);

  // Accent Colors
  static const Color accent25 = litmus25;
  static const Color accent50 = litmus50;
  static const Color accent100 = litmus100;
  static const Color accent200 = litmus200;
  static const Color accent300 = litmus300;
  static const Color accent400 = litmus400;
  static const Color accent500 = litmus500;
  static const Color accent600 = litmus600;
  static const Color accent700 = litmus700;
  static const Color accent800 = litmus800;
  static const Color accent900 = litmus900;

  // Other Colors
  static const Color green50 = Color.fromRGBO(237, 247, 238, 1);
  static const Color green600 = Color.fromRGBO(71, 158, 76, 1);
  static const Color orange50 = Color.fromRGBO(255, 245, 229, 1);
  static const Color orange600 = Color.fromRGBO(204, 122, 0, 1);
  static const Color red25 = Color.fromRGBO(254, 241, 241, 1);
  static const Color red600 = Color.fromRGBO(187, 20, 17, 1);

  // Text Semantic Colors
  static const Color textSuccess = green600;
  static const Color textWarning = orange600;
  static const Color textDanger = red600;
  static const Color textInfo = litmus500;

  // Text Styles
  static const Color textDefault = neutral1000;
  static const Color textBody = neutral900;
  static const Color textSubheading = neutral600;
  static const Color textPlaceholder = neutral500;
  static const Color textDisabled = neutral400;
  static const Color textBrand = litmus500;
  static const Color textOnBrand = neutral0;
  static const Color textOnInverse = neutral0;

  // Text OnColor
  static const Color textOnColorLighter = neutral1000;
  static const Color textOnColorDarker = neutral0;

  // Shape Colors
  static const Color shapePrimary = neutral900;
  static const Color shapeSecondary = neutral600;
  static const Color shapeTertiary = neutral300;
  static const Color shapeOutline = surfaceTransparent10;
  static const Color shapeBrand = litmus500;
  static const Color shapeOnBrand = neutral0;
  static const Color shapeOnInverse = neutral0;

  // Shape OnColor
  static const Color shapeOnColorLighter = neutral1000;
  static const Color shapeOnColorDarker = neutral0;

  // Shape Semantic Colors
  static const Color shapeSuccess = green600;
  static const Color shapeWarning = orange600;
  static const Color shapeDanger = red600;
  static const Color shapeInfo = litmus500;

  // Surface Colors
  static const Color surfaceBase = neutral0;
  static const Color surface1 = neutral25;
  static const Color surface2 = neutral50;
  static const Color surface3 = neutral100;
  static const Color surfaceInverse = neutral900;
  static const Color surfaceBrand = litmus500;
  static const Color surfaceCard = litmus100;

  // Surface Semantic Colors
  static const Color surfaceSuccess = green50;
  static const Color surfaceWarning = orange50;
  static const Color surfaceDanger = red25;
  static const Color surfaceInfo = litmus25;

  // Surface Transparent Colors
  static const Color transparent = Color.fromRGBO(0, 0, 0, 0);
  static const Color surfaceTransparent3 = Color.fromRGBO(0, 0, 0, 0.03);
  static const Color surfaceTransparent5 = Color.fromRGBO(0, 0, 0, 0.05);
  static const Color surfaceTransparent10 = Color.fromRGBO(0, 0, 0, 0.1);
  static const Color surfaceTransparent20 = Color.fromRGBO(0, 0, 0, 0.2);
  static const Color surfaceTransparent30 = Color.fromRGBO(0, 0, 0, 0.3);
  static const Color surfaceTransparent40 = Color.fromRGBO(0, 0, 0, 0.4);
  static const Color surfaceTransparent50 = Color.fromRGBO(0, 0, 0, 0.5);
  static const Color surfaceTransparent60 = Color.fromRGBO(0, 0, 0, 0.6);
  static const Color surfaceTransparent70 = Color.fromRGBO(0, 0, 0, 0.7);
  static const Color surfaceTransparent80 = Color.fromRGBO(0, 0, 0, 0.8);
  static const Color surfaceTransparent90 = Color.fromRGBO(0, 0, 0, 0.9);

  // Alert barrier color
  static const Color barrierTransparent30 = Color.fromRGBO(26, 26, 26, 0.3);
}
