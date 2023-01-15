import 'package:flutter/material.dart';
import 'package:streaming_app/constants.dart';
import 'package:streaming_app/models/live.dart';

class LiveCard extends StatelessWidget {
  final Live live;
  const LiveCard({super.key, required this.live});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final widthCard = (width - defaultPadding) / 2.2;
    return Stack(
      children: <Widget>[
        ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                backgroundColor.withOpacity(0.8),
                Colors.transparent,
                Colors.transparent,
                backgroundColor.withOpacity(0.8),
              ],
            ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
          },
          blendMode: BlendMode.darken,
          child: Container(
            width: widthCard,
            margin: const EdgeInsets.only(
              right: defaultPadding / 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultPadding / 1.2),
              image: DecorationImage(
                image: AssetImage(live.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(defaultPadding / 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: backgroundColor,
                    backgroundImage: AssetImage(live.streamer.image),
                    radius: defaultPadding / 2,
                  ),
                  const SizedBox(width: defaultPadding / 3),
                  Text(
                    live.streamer.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: primaryColor,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding / 2,
                      vertical: defaultPadding / 3,
                    ),
                    child: Text(
                      '${live.views}k viewers',
                      style: const TextStyle(
                        color: backgroundColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding / 4),
                  Text(
                    live.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: defaultPadding / 4),
                  Text(
                    live.game,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
