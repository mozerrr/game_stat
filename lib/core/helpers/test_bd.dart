import 'package:game_stat/models/game.dart';
import 'package:game_stat/models/user.dart';

class TestBD {
  static Game get gameRoot => Game(
        id: '1',
        name: 'Root',
      );

  static Game get gameStarRealms => Game(
        id: '2',
        name: 'Star Realms',
      );

  static User get mainUser => User(
        nickname: 'Asuka Langley Soryu',
        imageUrl: 'assets/image/profile_image_1.jpg',
        playedGames: 124,
        winrate: 58.9,
        averageEloRating: 1898,
      );
}
