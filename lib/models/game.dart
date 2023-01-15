class Game {
  final int id;
  final String title, image;

  Game({
    required this.id,
    required this.title,
    required this.image,
  });
}

List<Game> games = [
  Game(
    id: 1,
    title: 'Counter Strike: Global Offensive',
    image: 'assets/images/csgo.jpg',
  ),
  Game(
    id: 2,
    title: 'Valorant',
    image: 'assets/images/valorant.png',
  ),
  Game(
    id: 3,
    title: 'GTA 5',
    image: 'assets/images/gta5.jpg',
  ),
  Game(
    id: 4,
    title: 'League of Legends',
    image: 'assets/images/lol.jpg',
  ),
];
