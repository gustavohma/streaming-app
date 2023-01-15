import 'package:flutter/material.dart';
import 'package:streaming_app/constants.dart';
import 'package:streaming_app/models/game.dart';

class GamesCards extends StatelessWidget {
  const GamesCards({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final widthCard = (width - defaultPadding) / 3.4;
    return Container(
      margin: const EdgeInsets.only(
        top: defaultPadding,
      ),
      height: 150,
      child: ListView.builder(
        padding: const EdgeInsets.only(
          left: defaultPadding,
          right: defaultPadding / 2,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: games.length,
        itemBuilder: (context, index) => Container(
          width: widthCard,
          margin: const EdgeInsets.only(
            right: defaultPadding / 2,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultPadding / 1.2),
            image: DecorationImage(
              image: AssetImage(games[index].image),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
