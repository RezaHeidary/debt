import 'package:debt/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final theme = ThemeData(
    colorScheme: const ColorScheme.light(primary: MyColor.btnBackColor),
    fontFamily: GoogleFonts.vazirmatn().fontFamily,
    textTheme: const TextTheme(
        titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        bodySmall: TextStyle(color: MyColor.bodyTextColor, fontSize: 12),
        titleMedium: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: TextStyle(color: Colors.grey),
        headlineSmall: TextStyle(
            color: MyColor.appBarColor,
            fontSize: 18,
            fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(
            color: MyColor.appBarColor,
            fontSize: 16,
            fontWeight: FontWeight.bold),
        labelLarge: TextStyle(color: MyColor.pointColor, fontSize: 18),
        headlineLarge: TextStyle(
            color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
  );
}
