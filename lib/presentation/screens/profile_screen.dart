import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      primary: true,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              const CircleAvatar(
                radius: 70,
                foregroundImage: AssetImage('assets/image/profile_image_1.jpg'),
                child: Text('ALS'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Asuka Langley Soryu',
                style: TextStyle(
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
                children: const [
                  TableRow(
                    children: [
                      Text(
                        'Played Games:',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        '124',
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        'Winrate:',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        '58.9%',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        // overflow: TextOverflow.visible,
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        'Average Elo-rating:',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        '1898',
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
