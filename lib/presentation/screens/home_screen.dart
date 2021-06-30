import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_stat/bloc/page_scroll/page_scroll_cubit.dart';
import 'package:game_stat/core/helpers/test_bd.dart';
import 'package:game_stat/presentation/screens/games_history_screen.dart';
import 'package:game_stat/presentation/screens/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: false,
        bottom: false,
        right: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: BlocBuilder<PageScrollCubit, PageScrollState>(
                builder: (context, state) {
                  return Stack(
                    children: [
                      Align(
                        // Позиция таба
                        alignment: Alignment(state.position * -1.15, 0),
                        child: Transform.scale(
                          scale: 1 - (state.position / 10),
                          child: TextButton(
                            onPressed: () {
                              context
                                  .read<PageScrollCubit>()
                                  .controller
                                  .animateToPage(
                                    0,
                                    duration: const Duration(milliseconds: 150),
                                    curve: Curves.easeInCubic,
                                  );
                            },
                            child: Text(
                              'Главная',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.black.withOpacity(
                                  1 - (state.position / 2).abs(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(state.position * -1.15 + 1.15, 0),
                        child: Transform.scale(
                          scale: 0.9 + (state.position / 10),
                          child: TextButton(
                            onPressed: () {
                              context
                                  .read<PageScrollCubit>()
                                  .controller
                                  .animateToPage(
                                    1,
                                    duration: const Duration(milliseconds: 150),
                                    curve: Curves.easeInCubic,
                                  );
                            },
                            child: Text(
                              'Профиль',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.black.withOpacity(
                                  min(0.5 + state.position / 2, 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: context.read<PageScrollCubit>().controller,
                children: [
                  const GamesHistoryScreen(),
                  ProfileScreen(
                    user: TestBD.mainUser,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
