import 'package:dio/dio.dart';
import 'package:first_flutter_project/base/interceptor/result_interceptor.dart';
import 'package:first_flutter_project/base/interceptor/token_interceptor.dart';
import 'package:first_flutter_project/common/base_result.dart';

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
    _dio.interceptors.add(ResultInterceptor());
    _dio.interceptors.add(TokenInterceptor());
  }

  Future<BaseResult> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    final Response response = await _dio.get(
      url,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
    return BaseResult.fromJson(response.data);
    ;
  }

  Future<BaseResult> post(
    String url, {
    Map<String, dynamic>? queryParameters,
    Object? data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await _dio.post(
      url,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
    return BaseResult.fromJson(response.data);
  }
}
