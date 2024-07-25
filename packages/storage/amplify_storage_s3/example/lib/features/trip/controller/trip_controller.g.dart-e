// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tripControllerHash() => r'8fb30b509733af5cdf8e04d4a29b7397e5fa229a';

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

abstract class _$TripController
    extends BuildlessAutoDisposeAsyncNotifier<Trip> {
  late final String tripId;

  FutureOr<Trip> build(
    String tripId,
  );
}

/// See also [TripController].
@ProviderFor(TripController)
const tripControllerProvider = TripControllerFamily();

/// See also [TripController].
class TripControllerFamily extends Family<AsyncValue<Trip>> {
  /// See also [TripController].
  const TripControllerFamily();

  /// See also [TripController].
  TripControllerProvider call(
    String tripId,
  ) {
    return TripControllerProvider(
      tripId,
    );
  }

  @override
  TripControllerProvider getProviderOverride(
    covariant TripControllerProvider provider,
  ) {
    return call(
      provider.tripId,
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
  String? get name => r'tripControllerProvider';
}

/// See also [TripController].
class TripControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<TripController, Trip> {
  /// See also [TripController].
  TripControllerProvider(
    String tripId,
  ) : this._internal(
          () => TripController()..tripId = tripId,
          from: tripControllerProvider,
          name: r'tripControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tripControllerHash,
          dependencies: TripControllerFamily._dependencies,
          allTransitiveDependencies:
              TripControllerFamily._allTransitiveDependencies,
          tripId: tripId,
        );

  TripControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tripId,
  }) : super.internal();

  final String tripId;

  @override
  FutureOr<Trip> runNotifierBuild(
    covariant TripController notifier,
  ) {
    return notifier.build(
      tripId,
    );
  }

  @override
  Override overrideWith(TripController Function() create) {
    return ProviderOverride(
      origin: this,
      override: TripControllerProvider._internal(
        () => create()..tripId = tripId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tripId: tripId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TripController, Trip>
      createElement() {
    return _TripControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TripControllerProvider && other.tripId == tripId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tripId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TripControllerRef on AutoDisposeAsyncNotifierProviderRef<Trip> {
  /// The parameter `tripId` of this provider.
  String get tripId;
}

class _TripControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TripController, Trip>
    with TripControllerRef {
  _TripControllerProviderElement(super.provider);

  @override
  String get tripId => (origin as TripControllerProvider).tripId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
