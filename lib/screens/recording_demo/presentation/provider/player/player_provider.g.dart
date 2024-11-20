// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$playerHash() => r'1ec353d55d0c0b826ba55c04605d89e3930d26d0';

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

abstract class _$Player extends BuildlessAutoDisposeNotifier<PlayerDefaultState> {
  late final String filePath;

  PlayerDefaultState build(
    String filePath,
  );
}

/// See also [Player].
@ProviderFor(Player)
const playerProvider = PlayerFamily();

/// See also [Player].
class PlayerFamily extends Family<PlayerDefaultState> {
  /// See also [Player].
  const PlayerFamily();

  /// See also [Player].
  PlayerProvider call(
    String filePath,
  ) {
    return PlayerProvider(
      filePath,
    );
  }

  @override
  PlayerProvider getProviderOverride(
    covariant PlayerProvider provider,
  ) {
    return call(
      provider.filePath,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'playerProvider';
}

/// See also [Player].
class PlayerProvider extends AutoDisposeNotifierProviderImpl<Player, PlayerDefaultState> {
  /// See also [Player].
  PlayerProvider(
    String filePath,
  ) : this._internal(
          () => Player()..filePath = filePath,
          from: playerProvider,
          name: r'playerProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$playerHash,
          dependencies: PlayerFamily._dependencies,
          allTransitiveDependencies: PlayerFamily._allTransitiveDependencies,
          filePath: filePath,
        );

  PlayerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filePath,
  }) : super.internal();

  final String filePath;

  @override
  PlayerDefaultState runNotifierBuild(
    covariant Player notifier,
  ) {
    return notifier.build(
      filePath,
    );
  }

  @override
  Override overrideWith(Player Function() create) {
    return ProviderOverride(
      origin: this,
      override: PlayerProvider._internal(
        () => create()..filePath = filePath,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filePath: filePath,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<Player, PlayerDefaultState> createElement() {
    return _PlayerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PlayerProvider && other.filePath == filePath;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filePath.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PlayerRef on AutoDisposeNotifierProviderRef<PlayerDefaultState> {
  /// The parameter `filePath` of this provider.
  String get filePath;
}

class _PlayerProviderElement extends AutoDisposeNotifierProviderElement<Player, PlayerDefaultState> with PlayerRef {
  _PlayerProviderElement(super.provider);

  @override
  String get filePath => (origin as PlayerProvider).filePath;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
