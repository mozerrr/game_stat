import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

/// Функция инициализации модулей для инъекций.
Future<void> initiateGetIt() async {
  final getIt = GetIt.instance..registerLazySingleton<Dio>(() => Dio());
  // ..registerLazySingleton<SearchCubit>(() => SearchCubit());
  await getIt.allReady();
}
