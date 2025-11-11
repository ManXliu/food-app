import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ResultInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // 假设你的 JSON 响应内容结构为 {"code":xxx, "message":xxx, ...}
    final data = response.data;

    final fToast = FToast();
    if (data is Map && data.containsKey('code') && data['code'] != 200) {
      // 弹框提示
      Fluttertoast.showToast(msg: '${data['msg']}');
    }
    handler.next(response); // 继续处理
  }
}
