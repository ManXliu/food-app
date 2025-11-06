// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_status_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LoginStatusProvider)
const loginStatusProviderProvider = LoginStatusProviderProvider._();

final class LoginStatusProviderProvider
    extends $NotifierProvider<LoginStatusProvider, LoginStatus> {
  const LoginStatusProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginStatusProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginStatusProviderHash();

  @$internal
  @override
  LoginStatusProvider create() => LoginStatusProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginStatus value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginStatus>(value),
    );
  }
}

String _$loginStatusProviderHash() =>
    r'1d39038ca5bf4dd531e6ef90b8863d1d723c797f';

abstract class _$LoginStatusProvider extends $Notifier<LoginStatus> {
  LoginStatus build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LoginStatus, LoginStatus>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LoginStatus, LoginStatus>,
              LoginStatus,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
