import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_stat/bloc/page_scroll/page_scroll_cubit.dart';
import 'package:game_stat/presentation/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      theme: ThemeData(fontFamily: 'Helvetica'),
      home: BlocProvider<PageScrollCubit>(
        create: (context) => PageScrollCubit(),
        child: const HomeScreen(),
      ),
    );
  }
}
