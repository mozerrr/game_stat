// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:package_info/package_info.dart';
//
// import '../config.dart';
// import '../paths.dart';
//
// class NetworkHelper {
//   static final Dio _dio = Dio(BaseOptions(
//     baseUrl: kReleaseMode || Config.release ? Paths.host : Paths.hostDebug,
//   ));
//   static final _lang = Intl.defaultLocale ?? 'en';
//
//   static void init(
//       VoidCallback onRequestErrorCallback, VoidCallback unauthorized) {
//     // _dio.interceptors.add(CustomInterceptor(
//     //     onRequestErrorCallback: onRequestErrorCallback, dio: _dio, unauthorized: unauthorized));
//   }
//
//   /// Получение данных с текстом пользовательского соглашения.
//   static Future<Map<String, dynamic>> getUserAgreement() async {
//     final Map<String, String> headers = {
//       'Accept-Language': _lang,
//     };
//
//     Response response;
//     try {
//       response = await _dio.get(
//         Paths.terms,
//         options: Options(headers: headers),
//       );
//     } on DioError catch (error) {
//       throw '[ userAgreement ] $error';
//     }
//     return response.data;
//   }
//
//   ///
//   static Future<Map<String, dynamic>> getCategoriesList() async {
//     final Map<String, String> headers = {
//       'Accept-Language': _lang,
//     };
//
//     Response response;
//     final String? minAppVersion;
//     try {
//       response = await _dio.get(
//         Paths.getCategoriesList,
//         options: Options(headers: headers),
//       );
//     } on DioError catch (error) {
//       print(error.response?.data);
//       throw '[ getCategoriesList ] $error';
//     }
//     minAppVersion = response.headers.map['MIN_APP_VERSION']?.single;
//     final packageInfo = await PackageInfo.fromPlatform();
//     final version = packageInfo.version;
//
//     //check
//     if (minAppVersion != version) {
//       print('app version not fresh');
//       // throw VersionError(content: response.data);
//     }
//     return response.data;
//   }
//
//   ///
//   static Future<Map<String, dynamic>> getGroupsResources(
//       {required String groupId,
//       required int offset,
//       required int limit}) async {
//     final Map<String, String> headers = {
//       'Accept-Language': _lang,
//     };
//     final Map<String, dynamic> queryParameters = {
//       'offset': offset,
//       'limit': limit
//     };
//
//     Response response;
//     try {
//       response = await _dio.get(
//         '${Paths.getGroupsResourcesStart}$groupId/${Paths.getGroupsResourcesEnd}',
//         options: Options(headers: headers),
//         queryParameters: queryParameters,
//       );
//     } on DioError catch (error) {
//       throw '[ getGroupsResources ] $error';
//     }
//     return response.data;
//   }
//
//   ///
//   static Future<Map<String, dynamic>> getResource(
//       {required String resourceId}) async {
//     final Map<String, String> headers = {
//       'Accept-Language': _lang,
//     };
//
//     Response response;
//     try {
//       response = await _dio.get(
//         Paths.getResource + resourceId,
//         options: Options(headers: headers),
//       );
//     } on DioError catch (error) {
//       throw '[ getResource ] $error';
//     }
//     return response.data;
//   }
//
//   static Future<bool> checkServer() async {
//     Response response;
//     try {
//       response = await _dio.get(
//         Paths.whoIs,
//       );
//     } on DioError catch (error) {
//       print('[ checkServer ] $error');
//       return false;
//     }
//     return response.statusCode == 200;
//   }
//
//   static Future<List<int>> downloadFile(
//       {required String urlPath, required String savePath}) async {
//     Response response;
//
//     try {
//       response = await _dio.download(
//         urlPath,
//         savePath,
//       );
//       return response.data;
//     } on DioError catch (error) {
//       print('[ downloadFile ] $error');
//       rethrow;
//     }
//   }
//
//   static Future<bool> pushToken({required String firebaseToken}) async {
//     final Map<String, String> headers = {
//       'Accept-Language': _lang,
//     };
//
//     final data = {
//       'token': firebaseToken,
//     };
//
//     Response response;
//     try {
//       response = await _dio.post(
//         Paths.firebaseToken,
//         options: Options(headers: headers),
//         data: data,
//       );
//     } on DioError catch (error) {
//       print('[ pushToken ] $error');
//       return false;
//     }
//     return response.statusCode == 201;
//   }
// }
