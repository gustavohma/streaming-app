import 'package:flutter/material.dart';
import 'package:streaming_app/constants.dart';
import 'package:streaming_app/models/streamer.dart';
import 'package:streaming_app/pages/home/components/streamer_card.dart';

class StreamersCards extends StatelessWidget {
  const StreamersCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: defaultPadding,
      ),
      height: 80,
      child: ListView.builder(
        padding: const EdgeInsets.only(
          left: defaultPadding,
          right: defaultPadding / 2,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: streamers.length,
        itemBuilder: (context, index) =>
            StreamerCard(streamer: streamers[index]),
      ),
    );
  }
}
