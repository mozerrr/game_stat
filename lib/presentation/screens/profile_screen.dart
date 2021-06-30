import 'package:flutter/material.dart';
import 'package:game_stat/models/user.dart';

class ProfileScreen extends StatelessWidget {
  final User user;

  const ProfileScreen({required this.user, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              foregroundImage: AssetImage(user.imageUrl!),
              child: Text(user.nickname.substring(0, 1)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              user.nickname,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: const {
                0: FractionColumnWidth(0.65),
                1: FractionColumnWidth(0.35),
              },
              children: [
                TableRow(
                  children: [
                    const Text(
                      'Played Games:',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      user.playedGames!.toString(),
                      textAlign: TextAlign.right,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const Text(
                      'Winrate:',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '${user.winrate}%',
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                      // overflow: TextOverflow.visible,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const Text(
                      'Average Elo-rating:',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      user.averageEloRating.toString(),
                      textAlign: TextAlign.right,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
