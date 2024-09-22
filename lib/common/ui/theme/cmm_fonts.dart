part of 'cmm_app_theme.dart';

TextTheme _buildTextTheme(TextTheme base, Color textColor) {
  return base.copyWith(
    titleLarge: GoogleFonts.redHatDisplay(
      textStyle: TextStyle(
        color: textColor,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
    titleMedium: GoogleFonts.redHatDisplay(
      textStyle: TextStyle(
        color: textColor,
        fontSize: 18,
      ),
    ),
    titleSmall: GoogleFonts.redHatDisplay(
      textStyle: TextStyle(
        color: textColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    ),
    bodyMedium: GoogleFonts.redHatDisplay(
      textStyle: TextStyle(
        color: textColor,
        fontSize: 16,
      ),
    ),
    bodyLarge: GoogleFonts.redHatDisplay(
      textStyle: TextStyle(
        color: textColor,
        fontSize: 14,
      ),
    ),
    labelLarge: GoogleFonts.redHatDisplay(
      textStyle: TextStyle(
        color: textColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    ),
    bodySmall: GoogleFonts.redHatDisplay(
      textStyle: TextStyle(
        color: textColor,
        fontSize: 12,
      ),
    ),
    headlineMedium: GoogleFonts.redHatDisplay(
      textStyle: TextStyle(
        color: textColor,
        fontSize: 34,
      ),
    ),
    displaySmall: GoogleFonts.redHatDisplay(
      textStyle: TextStyle(
        color: textColor,
        fontSize: 48,
      ),
    ),
    displayMedium: GoogleFonts.redHatDisplay(
      textStyle: TextStyle(
        color: textColor,
        fontSize: 60,
      ),
    ),
    displayLarge: GoogleFonts.redHatDisplay(
      textStyle: TextStyle(
        color: textColor,
        fontSize: 96,
      ),
    ),
    headlineSmall: GoogleFonts.redHatDisplay(
      textStyle: TextStyle(
        color: textColor,
        fontSize: 24,
      ),
    ),
    labelSmall: GoogleFonts.redHatDisplay(
      textStyle: TextStyle(
        color: textColor,
        fontSize: 10,
      ),
    ),
  );
}
