import 'package:flutter/material.dart';
import 'package:streaming_app/constants.dart';

class TitleText extends StatelessWidget {
  final String text;
  const TitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
