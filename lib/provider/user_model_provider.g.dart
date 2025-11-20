// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserModelProvider)
const userModelProviderProvider = UserModelProviderProvider._();

final class UserModelProviderProvider
    extends $AsyncNotifierProvider<UserModelProvider, UserModel> {
  const UserModelProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userModelProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userModelProviderHash();

  @$internal
  @override
  UserModelProvider create() => UserModelProvider();
}

String _$userModelProviderHash() => r'78f94cda2c4dcbfd3355ddfd7eadc37549cb5524';

abstract class _$UserModelProvider extends $AsyncNotifier<UserModel> {
  FutureOr<UserModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<UserModel>, UserModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UserModel>, UserModel>,
              AsyncValue<UserModel>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
