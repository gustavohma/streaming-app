class Streamer {
  final int id;
  final double followers;
  final String name, image;
  final bool verified, isOnline;

  Streamer({
    required this.id,
    required this.followers,
    required this.name,
    required this.image,
    required this.verified,
    required this.isOnline,
  });
}

List<Streamer> streamers = [
  Streamer(
    id: 1,
    name: 'auronplay',
    followers: 9.8,
    image: 'assets/images/auronplay.jpg',
    verified: true,
    isOnline: true,
  ),
  Streamer(
    id: 2,
    name: 'xayoo_',
    followers: 1.0,
    image: 'assets/images/xayoo.png',
    verified: true,
    isOnline: false,
  ),
  Streamer(
    id: 3,
    name: 'xQc',
    followers: 11.5,
    image: 'assets/images/xqcow.jpeg',
    verified: true,
    isOnline: false,
  ),
];
