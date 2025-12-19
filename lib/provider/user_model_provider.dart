import 'package:first_flutter_project/base/env.dart';
import 'package:first_flutter_project/base/net_request_manager.dart';
import 'package:first_flutter_project/model/user_model.dart';
import 'package:first_flutter_project/provider/login_status_provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_model_provider.g.dart';

@riverpod
class UserModelProvider extends _$UserModelProvider {
  @override
  Future<UserModel> build() async {
    ref.keepAlive();
    return Future.value(UserModel(BigInt.zero, 'unknown', '', '', ''));
  }

  /// 模拟登录方法
  Future<void> login({
    required String username,
    required String password,
  }) async {
    // 设置为 loading（AsyncValue.loading()）
    final loginStatus = ref.read(loginStatusProviderProvider.notifier);
    loginStatus.reset(LoginStatus.loading);
    try {
      final result = await NetRequestManager.instance.post(
        "/auth/login",
        data: {
          "username": username,
          "password": password,
          "clientId": Env.clientId,
          "grantType": Env.grantType,
          "tenantId": Env.tenantId,
        },
      );
      if (result.code != 200) {
        throw Exception(result.msg);
      }
      final userModel = UserModel.fromJson(result.data);
      final flutterSecureStorage = FlutterSecureStorage();
      await flutterSecureStorage.write(
        key: "accessToken",
        value: userModel.accessToken,
      );

      await flutterSecureStorage.write(
        key: "userId",
        value: userModel.userId.toString(),
      );
      state = AsyncData(userModel);
      loginStatus.reset(LoginStatus.success);
    } catch (e) {
      loginStatus.reset(LoginStatus.error);
    }
  }

  Future<bool> checkToken() async {
    final result = await NetRequestManager.instance.get("/auth/checkToken");
    final data = result.data as bool;
    return data;
  }

  /// 退出登录
  Future<void> logout() async {
    final flutterSecureStorage = FlutterSecureStorage();
    await flutterSecureStorage.delete(key: "userId");
    await flutterSecureStorage.delete(key: "accessToken");
  }

  /// 退出登录
  void setValue(String username, String password) {
    state = AsyncData(UserModel(BigInt.zero, 'unknown', '', '', ''));
  }
}
