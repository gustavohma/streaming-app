import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streaming_app/constants.dart';
import 'package:streaming_app/pages/home/home_page.dart';

void main() {
  runApp(const StreamApp());
}

class StreamApp extends StatelessWidget {
  const StreamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Streaming App',
      theme: ThemeData(
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
      ),
      home: const HomePage(),
    );
  }
}
