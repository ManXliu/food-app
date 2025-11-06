import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_status_provider.g.dart';

enum LoginStatus { idle, loading, success, error }


@riverpod
class LoginStatusProvider extends _$LoginStatusProvider {
  @override
  LoginStatus build() {
    return LoginStatus.idle;
  }


  void reset(LoginStatus loginStatus) => state = loginStatus;
}