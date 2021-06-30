import 'package:flutter/material.dart';
import 'package:game_stat/core/helpers/test_bd.dart';
import 'package:game_stat/presentation/widgets/log_game_widget/game_chip.dart';

class LastGameWidget extends StatelessWidget {
  const LastGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        const AddGameChip(),
        GameChip(game: TestBD.gameRoot),
        GameChip(game: TestBD.gameStarRealms),
      ],
    );
  }
}
