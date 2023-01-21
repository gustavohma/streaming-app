import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streaming_app/constants.dart';

ThemeData themeData({
  required BuildContext context,
}) =>
    ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        color: Colors.transparent,
        foregroundColor: backgroundColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: backgroundColor,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
      ),
      colorScheme: ThemeData().colorScheme.copyWith(
            primary: backgroundColor,
            secondary: primaryColor,
          ),
      textTheme: GoogleFonts.lexendTextTheme(
        Theme.of(context).textTheme,
      ),
    );
