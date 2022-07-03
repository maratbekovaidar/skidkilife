
import 'package:flutter/material.dart';
import 'package:skidkilife/configurations/themes/hex_color_extension.dart';

class AppTheme {
  static ThemeData get basic => ThemeData(
    primarySwatch: HexColor.getPrimarySwatch("#B20600"),
    primaryColor: HexColor.fromHex("#B20600"),
    primaryColorDark: HexColor.fromHex("#00092C"),
    primaryColorLight: HexColor.fromHex("#B20600"),

    /// AppBar
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: HexColor.getPrimarySwatch("#B20600"),
      )
    )

  );
}