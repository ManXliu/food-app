import 'package:dio/dio.dart';

import 'env.dart';

class NetRequestManager {
  // 工厂模式
  factory NetRequestManager() => _getInstance();

  static NetRequestManager get instance => _getInstance();
  static NetRequestManager? _instance;

  NetRequestManager._internal() {
    // 初始化
    _init();
  }

  late Dio _dio;

  static NetRequestManager _getInstance() {
    _instance ??= NetRequestManager._internal();
    return _instance!;
  }

  void _init() {
    _dio = Dio(
      BaseOptions(
        connectTimeout: Duration(milliseconds: 5000),
        receiveTimeout: Duration(milliseconds: 100000),
        baseUrl: Env.baseUrl,
      ),
    );
    _dio.interceptors.add(InterceptorsWrapper());
  }

  Future<Response> getRequest<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    var response = await _dio.get(
      url,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
    return response;
  }
}

abstract class RequestCallback<T> {

  void onSuccess(T requestData);

  void onFailed(Exception e);
}
