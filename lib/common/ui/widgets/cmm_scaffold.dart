import 'dart:ui';

import 'package:churchlab/common/common.dart';
import 'package:churchlab/common/providers/cmm_theme_provider.dart';
import 'package:churchlab/common/ui/theme/cmm_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CmmScaffold extends StatefulWidget {

  /// Cuerpo del widget
  Widget? body;

  /// booleano para mostrar o no el boton de regresar
  bool showReturn = true;

  CmmScaffold({
      super.key,
      required this.body,
      this.showReturn = true
    });

  @override
  State<CmmScaffold> createState() => _CmmScaffoldState();
}

class _CmmScaffoldState extends State<CmmScaffold> {

  @override
  Widget build(BuildContext context) {

    //final themeProvider = context.watch<CmmThemeProvider>();

    return ChangeNotifierProvider(
      create: (_) => CmmThemeProvider(),
      builder: ((context, child) {

        final themeProvider = context.watch<CmmThemeProvider>();
        return Scaffold(
        backgroundColor: themeProvider.isDarkModeEnabled ? darkSecondaryColor : primaryScaffoldColor,
        appBar: AppBar(
          // backgroundColor: themeProvider.isDarkMode ? Colors.black : Colors.grey[200],
          backgroundColor: Colors.transparent,
          actions: [
            Switch(
            value: themeProvider.isDarkModeEnabled ? true : false,
            activeColor: primaryColor,
            onChanged: (bool value) {
              setState(() {
                themeProvider.toggleDarkMode();
                // active = value;
              });
            },
          ),
          ],
          elevation: 0,
          flexibleSpace: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 35.0, sigmaY: 35.0),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
          leading: widget.showReturn ? IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(false),
          ) : null,
          title: CmmTitleText(
            title: 'ChurchLAB',
            isBool: true,
            fontSize: 20,
            color: themeProvider.isDarkModeEnabled ? lightColor : secondaryColor,
            ),
        ),
        body: SingleChildScrollView(
          child: widget.body,
        ),
        );
      }
    ),);
  }
}