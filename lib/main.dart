import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_stat/app.dart';
import 'package:game_stat/core/getit_initialization.dart';
import 'package:game_stat/core/preferences.dart';

void main() async {
  await initiateGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Future.wait([
    Preferences().init(),
    // TODO (mozerrr): добавить когда будет готово приложение
    // AppmetricaSdk().activate(apiKey: Config.appMetricaKey),
  ]);
  runApp(const MyApp());
}
