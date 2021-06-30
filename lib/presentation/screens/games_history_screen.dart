import 'package:flutter/material.dart';
import 'package:game_stat/presentation/widgets/log_game_widget/last_game_widget.dart';

class GamesHistoryScreen extends StatelessWidget {
  const GamesHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        LastGameWidget(),
        Text('other'),
      ],
    );
  }
}
