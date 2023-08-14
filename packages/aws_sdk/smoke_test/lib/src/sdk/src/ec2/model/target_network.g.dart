// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_network.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TargetNetwork extends TargetNetwork {
  @override
  final String? associationId;
  @override
  final String? vpcId;
  @override
  final String? targetNetworkId;
  @override
  final String? clientVpnEndpointId;
  @override
  final AssociationStatus? status;
  @override
  final _i2.BuiltList<String>? securityGroups;

  factory _$TargetNetwork([void Function(TargetNetworkBuilder)? updates]) =>
      (new TargetNetworkBuilder()..update(updates))._build();

  _$TargetNetwork._(
      {this.associationId,
      this.vpcId,
      this.targetNetworkId,
      this.clientVpnEndpointId,
      this.status,
      this.securityGroups})
      : super._();

  @override
  TargetNetwork rebuild(void Function(TargetNetworkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TargetNetworkBuilder toBuilder() => new TargetNetworkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TargetNetwork &&
        associationId == other.associationId &&
        vpcId == other.vpcId &&
        targetNetworkId == other.targetNetworkId &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        status == other.status &&
        securityGroups == other.securityGroups;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, targetNetworkId.hashCode);
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, securityGroups.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TargetNetworkBuilder
    implements Builder<TargetNetwork, TargetNetworkBuilder> {
  _$TargetNetwork? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _targetNetworkId;
  String? get targetNetworkId => _$this._targetNetworkId;
  set targetNetworkId(String? targetNetworkId) =>
      _$this._targetNetworkId = targetNetworkId;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  AssociationStatusBuilder? _status;
  AssociationStatusBuilder get status =>
      _$this._status ??= new AssociationStatusBuilder();
  set status(AssociationStatusBuilder? status) => _$this._status = status;

  _i2.ListBuilder<String>? _securityGroups;
  _i2.ListBuilder<String> get securityGroups =>
      _$this._securityGroups ??= new _i2.ListBuilder<String>();
  set securityGroups(_i2.ListBuilder<String>? securityGroups) =>
      _$this._securityGroups = securityGroups;

  TargetNetworkBuilder();

  TargetNetworkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _vpcId = $v.vpcId;
      _targetNetworkId = $v.targetNetworkId;
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _status = $v.status?.toBuilder();
      _securityGroups = $v.securityGroups?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TargetNetwork other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TargetNetwork;
  }

  @override
  void update(void Function(TargetNetworkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TargetNetwork build() => _build();

  _$TargetNetwork _build() {
    _$TargetNetwork _$result;
    try {
      _$result = _$v ??
          new _$TargetNetwork._(
              associationId: associationId,
              vpcId: vpcId,
              targetNetworkId: targetNetworkId,
              clientVpnEndpointId: clientVpnEndpointId,
              status: _status?.build(),
              securityGroups: _securityGroups?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();
        _$failedField = 'securityGroups';
        _securityGroups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TargetNetwork', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
