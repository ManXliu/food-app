// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_index.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HomeIndex)
const homeIndexProvider = HomeIndexProvider._();

final class HomeIndexProvider extends $NotifierProvider<HomeIndex, int> {
  const HomeIndexProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeIndexProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeIndexHash();

  @$internal
  @override
  HomeIndex create() => HomeIndex();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$homeIndexHash() => r'7f6dda9a22ca404390f20fecfe4673a058755e4e';

abstract class _$HomeIndex extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
