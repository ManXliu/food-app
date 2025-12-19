import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // TODO: implement onRequest
    String url = options.uri.toString();
    final flutterSecureStorage = FlutterSecureStorage();
    if (!url.endsWith("/auth/login")) {
      String? accessToken = await flutterSecureStorage.read(key: "accessToken");
      options.headers["Authorization"] = "Bearer ${accessToken}";
    }
    super.onRequest(options, handler);
  }
}
