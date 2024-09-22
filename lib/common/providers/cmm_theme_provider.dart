import 'package:churchlab/common/providers/cmm_general_provider.dart';
import 'package:churchlab/common/providers/cmm_storage_service_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CmmThemeProvider extends CmmGeneralProvider {
  bool _isDarkModeEnabled = false;
  final storage = CmmStorageService();

  bool get isDarkModeEnabled => _isDarkModeEnabled;

  CmmThemeProvider() {
    _loadDarkModeFromStorage();
  }

  void toggleDarkMode() {
    _isDarkModeEnabled = !_isDarkModeEnabled;
    _saveDarkModeToStorage();
    _updateSystemChromeStyle();
    notifyListeners();
  }

  void _loadDarkModeFromStorage() async {
    _isDarkModeEnabled = await storage.getValue('darkMode') ?? false;
    _updateSystemChromeStyle();
    notifyListeners();
  }

  void _saveDarkModeToStorage() async {
    storage.setKeyValue('darkMode', _isDarkModeEnabled);
  }

  void _updateSystemChromeStyle() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: _isDarkModeEnabled ? Colors.black : Colors.white, // Fondo de la barra de navegación
      systemNavigationBarIconBrightness: _isDarkModeEnabled ? Brightness.light : Brightness.dark, // Color del texto de la barra de navegación
    ));
  }
}
