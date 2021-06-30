import 'package:shared_preferences/shared_preferences.dart';

///Класс хранит сущность [SharedPreferences].
class Preferences {
  static final Preferences _singleton = Preferences._internal();

  late SharedPreferences _sharedPreferences;

  factory Preferences() {
    return _singleton;
  }

  Preferences._internal();

  ///Инициализирует [SharedPreferences] в классе.
  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  ///Отдаёт сущность [SharedPreferences].
  SharedPreferences get getInstance => _sharedPreferences;

  static const String tokenKey = 'token';
}
