import 'package:blog_app/core/theme/theme_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([
    Color color = AppPallete.borderColor,
  ]) =>
      OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      );

  static final darkThemeMode = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPallete.backgroundColor,
    ),
    chipTheme: const ChipThemeData(
      side: BorderSide.none,
      color: WidgetStatePropertyAll(
        AppPallete.backgroundColor,
      ),
    ),
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.gradient1),
      errorBorder: _border(AppPallete.errorColor),
      focusedErrorBorder: _border(AppPallete.errorColor),
    ),
  );
}
