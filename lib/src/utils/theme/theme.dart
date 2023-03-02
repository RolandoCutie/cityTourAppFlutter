import 'package:codewithtea/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:codewithtea/src/utils/theme/widget_themes/outline_button_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Todo:Aqui e define un tema de la app
class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    outlinedButtonTheme: TOutlineButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlineButtonTheme.darkOutlinedButtonTheme,
  );
}
