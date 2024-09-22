part of 'cmm_app_theme.dart';

ThemeData cmmThemeDataLight(Color textColor) {
  final ThemeData base = ThemeData.light();
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderRadiusValue),
  );

  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: brandColor,
      primary: primaryColor,
      // seedColor: _colorThemes[selectedColor],
      // primary: _colorThemes[selectedColor],
    ),

    drawerTheme: DrawerThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadiusValue),
      ),
    ),

    bottomSheetTheme: const BottomSheetThemeData(
      shape: LinearBorder(),
    ),

    textSelectionTheme: TextSelectionThemeData(
      cursorColor: textColor,
    ),

    // Scaffold
    scaffoldBackgroundColor: primaryScaffoldColor,
    dialogTheme: DialogTheme(
      backgroundColor: Colors.white,
      elevation: 1,
      actionsPadding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadiusValue),
      ),
    ),

    // Appbar
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      scrolledUnderElevation: 0,
      shadowColor: Colors.grey,
      iconTheme: IconThemeData(color: textColor),
      backgroundColor: primaryScaffoldColor,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: TextStyle(
        color: textColor,
        fontSize: 16,
      ),
    ),

    // Color fondo dialogos
    dialogBackgroundColor: Colors.white,
    // TextFields
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      filled: true,
      fillColor: Colors.grey[50],
      labelStyle: TextStyle(
        fontSize: 18,
        color: textColor,
      ),
      hintStyle: const TextStyle(
        overflow: TextOverflow.ellipsis,
        color: CmmAppTheme.hintTextColor,
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          width: 1.2,
          color: neutralColor,
        ),
      ),
      errorMaxLines: 6,
      enabledBorder: border.copyWith(
        borderSide: BorderSide(
          color: CmmAppTheme.borderColor.withOpacity(0.7),
          width: 1.2,
        ),
      ),
      focusedBorder: border.copyWith(
        borderSide: BorderSide(
          color: CmmAppTheme.borderColor,
          width: 2,
        ),
      ),
      errorBorder: border.copyWith(
        borderSide: BorderSide(
          color: Colors.red.shade800,
          width: 1.2,
        ),
      ),
      focusedErrorBorder: border.copyWith(
        borderSide: BorderSide(
          color: Colors.red.shade800,
          width: 2,
        ),
      ),
      contentPadding: const EdgeInsets.all(12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadiusValue),
      ),
    ),

    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadiusValue),
      ),
    ),

    // Botones
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        foregroundColor: neutralColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonBorderRadiusValue),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: primaryColor,
        foregroundColor: neutralColor,
        disabledBackgroundColor: neutralColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonBorderRadiusValue),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: neutralColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonBorderRadiusValue),
        ),
      ),
    ),

    cardTheme: const CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadiusValue),
        ),
      ),
      elevation: 1,
      color: Colors.white,
      surfaceTintColor: Colors.white,
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: textColor,
        textStyle: const TextStyle(
          fontSize: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonBorderRadiusValue),
        ),
      ),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
    ),

    // Textos
    textTheme: _buildTextTheme(
      base.textTheme,
      textColor,

    ),
    primaryTextTheme: _buildTextTheme(
      base.textTheme,
      textColor,
    ),
  );
}
