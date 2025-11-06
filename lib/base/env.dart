import 'package:envied/envied.dart';

part 'env.g.dart';

//obfuscate true开启为是否混淆
@Envied(obfuscate: false, requireEnvFile: true, path: ".env")
abstract class Env {
  @EnviedField(varName: "BASE_URL")
  static final String baseUrl = _Env.baseUrl;

  @EnviedField(varName: "CLIENT_ID")
  static final String clientId = _Env.clientId;

  @EnviedField(varName: "CLIENT_SECRET")
  static final String clientSecret = _Env.clientSecret;

  @EnviedField(varName: "GRANT_TYPE")
  static final String grantType = _Env.grantType;


}
