import 'package:churchlab/common/providers/cmm_theme_provider.dart';
import 'package:churchlab/common/ui/theme/cmm_app_theme.dart';
import 'package:churchlab/config/config.dart';
import 'package:churchlab/homepage/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp()
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // final themeProvider = context.watch<CmmThemeProvider>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      title: 'ChurchLab',
      theme: CmmAppTheme.themeLight(),
      darkTheme: CmmAppTheme.themeDark(primaryColor),
      themeMode:
          CmmThemeProvider().isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      home: const HomePageScreen(),
    );
  }
}

