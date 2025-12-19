import 'package:dio/dio.dart';

class ResultInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response); // 继续处理
  }
}
