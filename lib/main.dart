import 'package:flutter/material.dart';
import 'package:streaming_app/pages/home/home_page.dart';
import 'package:streaming_app/theme.dart';

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
      theme: themeData(context: context),
      home: const HomePage(),
    );
  }
}
