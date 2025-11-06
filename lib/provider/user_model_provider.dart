import 'package:first_flutter_project/base/env.dart';
import 'package:first_flutter_project/base/net_request_manager.dart';
import 'package:first_flutter_project/model/user_model.dart';
import 'package:first_flutter_project/provider/login_status_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_model_provider.g.dart';

@riverpod
class UserModelProvider extends _$UserModelProvider {
  @override
  Future<UserModel> build() async {
    ref.keepAlive();
    return Future.value(UserModel(BigInt.one, '1', '1', '2'));
  }

  /// 模拟登录方法
  Future<void> login({
    required String username,
    required String password,
  }) async {
    // 设置为 loading（AsyncValue.loading()）
    final loginStatus = ref.read(loginStatusProviderProvider.notifier);
    loginStatus.reset(LoginStatus.loading);
    await Future.delayed(const Duration(seconds: 2));
    try {
      final response = await NetRequestManager.instance.postRequest(
        "/auth/login",
        data: {
          "username": username,
          "password": password,
          "clientId": Env.clientId,
          "grantType": Env.grantType,
        },
      );
      loginStatus.reset(LoginStatus.success);
    } catch (e) {
      loginStatus.reset(LoginStatus.error);
    }
  }

  /// 退出登录
  void logout() async {}

  /// 退出登录
  void setValue(String username, String password) {
    state = AsyncData(UserModel(BigInt.one, username, password, username));
  }
}
