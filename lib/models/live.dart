import 'package:streaming_app/models/streamer.dart';

class Live {
  final int id;
  final double views;
  final String title, game, image;
  final Streamer streamer;

  Live({
    required this.id,
    required this.views,
    required this.title,
    required this.game,
    required this.image,
    required this.streamer,
  });
}

List<Live> lives = [
  Live(
    id: 1,
    views: 55.6,
    title: 'ESL ProLeague',
    game: 'Counter Strike',
    image: 'assets/images/live-01.jpg',
    streamer: Streamer(
      id: 1,
      name: 'Esl_csgo',
      followers: 1,
      image: 'assets/images/esl-team-logo.jpeg',
      verified: true,
      isOnline: true,
    ),
  ),
  Live(
    id: 2,
    views: 82.5,
    title: 'HLE vs LSB',
    game: 'League of Legends',
    image: 'assets/images/live-02.jpg',
    streamer: Streamer(
      id: 2,
      name: 'LCK',
      followers: 1,
      image: 'assets/images/lck-logo.jpg',
      verified: true,
      isOnline: true,
    ),
  ),
  Live(
    id: 3,
    views: 105.3,
    title: 'T1 vs G2',
    game: 'Valorant',
    image: 'assets/images/live-03.jpg',
    streamer: Streamer(
      id: 3,
      name: 'Valorant',
      followers: 1,
      image: 'assets/images/valorant-logo.png',
      verified: true,
      isOnline: true,
    ),
  ),
];
