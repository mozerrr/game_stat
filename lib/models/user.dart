class User {
  final String nickname;
  final String? firstName;
  final String? secondName;
  final String? imageUrl;
  final int? playedGames;
  final double? winrate;
  final double? averageEloRating;

  User({
    required this.nickname,
    this.firstName,
    this.secondName,
    this.imageUrl,
    this.playedGames,
    this.winrate,
    this.averageEloRating,
  });
}
