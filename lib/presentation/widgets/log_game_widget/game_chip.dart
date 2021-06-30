import 'package:flutter/material.dart';
import 'package:game_stat/models/game.dart';

class GameChip extends StatelessWidget {
  final Game game;

  const GameChip({
    required this.game,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawGameChip(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          if (game.imgUrl != null)
            Image.asset(game.imgUrl!)
          else
            Container(
              color: Colors.black38,
            ),
          Text(game.name),
        ],
      ),
    );
  }
}

class AddGameChip extends StatelessWidget {
  const AddGameChip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawGameChip(
      onTap: () {
        print('add');
      },
      child: Stack(
        children: [
          Container(
            color: Colors.black38,
          ),
          const Center(
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class RawGameChip extends StatelessWidget {
  final GestureTapCallback? onTap;
  final Widget child;

  const RawGameChip({
    required this.child,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //onTap: onTap,
      child: child,
    );
  }
}
