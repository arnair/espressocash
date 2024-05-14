// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$coinControllerHash() => r'9ef7e10364f6da3b549e99df619c4fbe13bbb3fd';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$CoinController extends BuildlessAsyncNotifier<Coin> {
  late final String id;

  FutureOr<Coin> build(
    String id,
  );
}

/// See also [CoinController].
@ProviderFor(CoinController)
const coinControllerProvider = CoinControllerFamily();

/// See also [CoinController].
class CoinControllerFamily extends Family<AsyncValue<Coin>> {
  /// See also [CoinController].
  const CoinControllerFamily();

  /// See also [CoinController].
  CoinControllerProvider call(
    String id,
  ) {
    return CoinControllerProvider(
      id,
    );
  }

  @override
  CoinControllerProvider getProviderOverride(
    covariant CoinControllerProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'coinControllerProvider';
}

/// See also [CoinController].
class CoinControllerProvider
    extends AsyncNotifierProviderImpl<CoinController, Coin> {
  /// See also [CoinController].
  CoinControllerProvider(
    String id,
  ) : this._internal(
          () => CoinController()..id = id,
          from: coinControllerProvider,
          name: r'coinControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$coinControllerHash,
          dependencies: CoinControllerFamily._dependencies,
          allTransitiveDependencies:
              CoinControllerFamily._allTransitiveDependencies,
          id: id,
        );

  CoinControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<Coin> runNotifierBuild(
    covariant CoinController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(CoinController Function() create) {
    return ProviderOverride(
      origin: this,
      override: CoinControllerProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<CoinController, Coin> createElement() {
    return _CoinControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CoinControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CoinControllerRef on AsyncNotifierProviderRef<Coin> {
  /// The parameter `id` of this provider.
  String get id;
}

class _CoinControllerProviderElement
    extends AsyncNotifierProviderElement<CoinController, Coin>
    with CoinControllerRef {
  _CoinControllerProviderElement(super.provider);

  @override
  String get id => (origin as CoinControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
