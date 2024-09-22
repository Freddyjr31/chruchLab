
import 'package:churchlab/common/providers/cmm_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

part 'cmm_dark_theme.dart';
part 'cmm_fonts.dart';
part 'cmm_light_theme.dart';

const Color primaryColor = Color(0xFF007BFF);
const Color secondaryColor = Color(0xFF000000);
const Color brandColor = Color.fromARGB(255, 0, 115, 255);
const Color primaryScaffoldColor = Color(0xFFFFFFFF);
const Color lightColor = Color(0xFFf1f4f8);
const Color errorColor = Color(0xFFDC3545);
const Color neutralColor = Color(0xFF2A2A2A);
// const Color primaryScaffoldColor = Color(0xFFF1F4F8);

// * DARK MODE
const darkColor = Color(0xFF1E90FF); //negro oscuro SOLO FONDO
const containerColor = Color(0xFFCCCCCC); //negro claro
const darkSecondaryColor = Color(0xFF121212);

// Border radius
const double buttonBorderRadiusValue = 10;
const double borderRadiusValue = buttonBorderRadiusValue; //18

// Cards de opciones
const double imgHeightValue = 40; //18
const double cardHeightValue = 85; //18

class CmmAppTheme {
  final bool isDarkModeEnabled;

  static Color secColorScaffold = Color.fromARGB(255, 210, 220, 228);
  static Color borderColor = Color(0xFFCDCDCD);
  static const lightThemeTextColor = Color(0xFF4E4E4E);

  // Variable color de placeholders gris
  static const hintTextColor = Color(0xDDc9c7c7);

  late Color textColor;

  CmmAppTheme({
    this.isDarkModeEnabled = false,
  });
  ThemeData theme(BuildContext context) {
    final themeProvider = context.read<CmmThemeProvider>();

    if (themeProvider.isDarkModeEnabled) {
      textColor = Colors.white;
      return themeDark(
        textColor,
      );
    } else {
      textColor = lightThemeTextColor;
      return themeLight();
    }
  }

  static ThemeData themeLight() {
    return cmmThemeDataLight(
      lightThemeTextColor,
    );
  }

  static ThemeData themeDark(
    primaryColor,
  ) {
    return cmmThemeDataDark(
      Colors.white,
      primaryColor,
    );
  }
}
