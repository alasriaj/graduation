import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'colors.dart';

class DarkMode {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: Color1,
    accentColor: Color1,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color1,
      centerTitle: true,
    ),
    disabledColor: Colors.black12,
  );
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Color1,
    accentColor: Color1,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color1,
      centerTitle: true,
    ),
    disabledColor: Colors.white54,
  );
  final _getStorage = GetStorage();
  final _darkThemeKey = 'isDarMode';

  void saveThemeData(bool isDarkMode) {
    _getStorage.write(_darkThemeKey, isDarkMode);
  }

  bool isSavedDarkMode() {
    return _getStorage.read(_darkThemeKey) ?? false;
  }

  ThemeMode getThemeMode() {
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  void changTheme() {
    Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light : ThemeMode.dark);
    saveThemeData(!isSavedDarkMode());
  }
}
