import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(obfuscate: false, requireEnvFile: true, path: ".env")
abstract class Env {
  @EnviedField(varName: "baseUrl")
  static final String baseUrl = _Env.baseUrl;
}
