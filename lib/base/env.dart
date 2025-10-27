import 'package:envied/envied.dart';

part 'env.g.dart';

//obfuscate true开启为是否混淆
@Envied(obfuscate: false, requireEnvFile: true, path: ".env")
abstract class Env {
  @EnviedField(varName: "BASE_URL")
  static final String baseUrl = _Env.baseUrl;


}
