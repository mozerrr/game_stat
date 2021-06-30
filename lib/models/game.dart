class Game {
  final String name;
  final String id;
  final String? description;
  final String? imgUrl;
  final int? minPlayers;
  final int? maxPlayers;
  final int? loggedGames;

  Game({
    required this.name,
    required this.id,
    this.description,
    this.imgUrl,
    this.minPlayers,
    this.maxPlayers,
    this.loggedGames,
  });
}
