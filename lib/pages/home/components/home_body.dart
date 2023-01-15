import 'package:flutter/material.dart';
import 'package:streaming_app/constants.dart';
import 'package:streaming_app/pages/home/components/categories.dart';
import 'package:streaming_app/pages/home/components/games_cards.dart';
import 'package:streaming_app/pages/home/components/lives_cards.dart';
import 'package:streaming_app/pages/home/components/streamers_cards.dart';
import 'package:streaming_app/pages/home/components/title_text.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Your Favorite',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                ),
                Text(
                  'Streams',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.w800,
                        color: primaryColor,
                      ),
                ),
              ],
            ),
          ),
          const Categories(),
          const TitleText(
            text: 'Live Now',
          ),
          const LivesCards(),
          const TitleText(
            text: 'Popular Streamers',
          ),
          const StreamersCards(),
          const TitleText(
            text: 'Top Categories',
          ),
          const GamesCards(),
          const SizedBox(
            height: defaultPadding + customBottomHeight,
          )
        ],
      ),
    );
  }
}
