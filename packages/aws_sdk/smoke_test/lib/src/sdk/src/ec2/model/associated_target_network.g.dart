// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associated_target_network.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociatedTargetNetwork extends AssociatedTargetNetwork {
  @override
  final String? networkId;
  @override
  final AssociatedNetworkType? networkType;

  factory _$AssociatedTargetNetwork(
          [void Function(AssociatedTargetNetworkBuilder)? updates]) =>
      (new AssociatedTargetNetworkBuilder()..update(updates))._build();

  _$AssociatedTargetNetwork._({this.networkId, this.networkType}) : super._();

  @override
  AssociatedTargetNetwork rebuild(
          void Function(AssociatedTargetNetworkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociatedTargetNetworkBuilder toBuilder() =>
      new AssociatedTargetNetworkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociatedTargetNetwork &&
        networkId == other.networkId &&
        networkType == other.networkType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkId.hashCode);
    _$hash = $jc(_$hash, networkType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociatedTargetNetworkBuilder
    implements
        Builder<AssociatedTargetNetwork, AssociatedTargetNetworkBuilder> {
  _$AssociatedTargetNetwork? _$v;

  String? _networkId;
  String? get networkId => _$this._networkId;
  set networkId(String? networkId) => _$this._networkId = networkId;

  AssociatedNetworkType? _networkType;
  AssociatedNetworkType? get networkType => _$this._networkType;
  set networkType(AssociatedNetworkType? networkType) =>
      _$this._networkType = networkType;

  AssociatedTargetNetworkBuilder();

  AssociatedTargetNetworkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkId = $v.networkId;
      _networkType = $v.networkType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociatedTargetNetwork other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociatedTargetNetwork;
  }

  @override
  void update(void Function(AssociatedTargetNetworkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociatedTargetNetwork build() => _build();

  _$AssociatedTargetNetwork _build() {
    final _$result = _$v ??
        new _$AssociatedTargetNetwork._(
            networkId: networkId, networkType: networkType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
