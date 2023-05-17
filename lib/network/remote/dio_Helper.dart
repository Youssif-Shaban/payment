import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio();

  static init() {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: 'https://run.mocky.io/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    //   required Map<String, dynamic> query,
  }) async {
    return await dio.get(
      url,
    );
  }
}
