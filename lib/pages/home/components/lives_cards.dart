import 'package:flutter/material.dart';
import 'package:streaming_app/constants.dart';
import 'package:streaming_app/models/live.dart';
import 'package:streaming_app/pages/home/components/live_card.dart';

class LivesCards extends StatelessWidget {
  const LivesCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: defaultPadding,
      ),
      height: 220,
      child: ListView.builder(
        padding: const EdgeInsets.only(
          left: defaultPadding,
          right: defaultPadding / 2,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: lives.length,
        itemBuilder: (context, index) => LiveCard(live: lives[index]),
      ),
    );
  }
}
