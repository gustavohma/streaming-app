import 'package:flutter/material.dart';
import 'package:streaming_app/constants.dart';
import 'package:streaming_app/models/streamer.dart';

class StreamerCard extends StatelessWidget {
  final Streamer streamer;

  const StreamerCard({
    Key? key,
    required this.streamer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final widthCard = (width - defaultPadding) / 2.2;
    return Container(
      width: widthCard,
      margin: const EdgeInsets.only(
        right: defaultPadding / 2,
      ),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(defaultPadding / 1.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              CircleAvatar(
                backgroundColor:
                    streamer.isOnline ? primaryColor : Colors.white24,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(streamer.image),
                  ),
                ),
              ),
              if (streamer.verified)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90.0),
                      color: primaryColor,
                    ),
                    child: const Icon(
                      Icons.check_outlined,
                      size: 14.0,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: defaultPadding / 2),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                streamer.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: defaultPadding / 6),
              Text(
                '${streamer.followers}M followers',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
