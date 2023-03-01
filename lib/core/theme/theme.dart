import 'package:debt/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final theme = ThemeData(
    colorScheme: const ColorScheme.light(primary: MyColor.btnColor),
    fontFamily: GoogleFonts.vazirmatn().fontFamily,
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: MyColor.appBarColor, fontSize: 12),
      titleMedium: TextStyle(color: Colors.white),
      titleSmall: TextStyle(color: Colors.grey),
      headlineSmall: TextStyle(
          color: MyColor.appBarColor,
          fontSize: 18,
          fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(
          color: MyColor.appBarColor,
          fontSize: 16,
          fontWeight: FontWeight.bold),
      labelLarge: TextStyle(color: Colors.grey, fontSize: 18),
    ),
  );
}
