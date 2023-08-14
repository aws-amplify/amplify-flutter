// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_client_vpn_target_network_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateClientVpnTargetNetworkResult
    extends AssociateClientVpnTargetNetworkResult {
  @override
  final String? associationId;
  @override
  final AssociationStatus? status;

  factory _$AssociateClientVpnTargetNetworkResult(
          [void Function(AssociateClientVpnTargetNetworkResultBuilder)?
              updates]) =>
      (new AssociateClientVpnTargetNetworkResultBuilder()..update(updates))
          ._build();

  _$AssociateClientVpnTargetNetworkResult._({this.associationId, this.status})
      : super._();

  @override
  AssociateClientVpnTargetNetworkResult rebuild(
          void Function(AssociateClientVpnTargetNetworkResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateClientVpnTargetNetworkResultBuilder toBuilder() =>
      new AssociateClientVpnTargetNetworkResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateClientVpnTargetNetworkResult &&
        associationId == other.associationId &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateClientVpnTargetNetworkResultBuilder
    implements
        Builder<AssociateClientVpnTargetNetworkResult,
            AssociateClientVpnTargetNetworkResultBuilder> {
  _$AssociateClientVpnTargetNetworkResult? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  AssociationStatusBuilder? _status;
  AssociationStatusBuilder get status =>
      _$this._status ??= new AssociationStatusBuilder();
  set status(AssociationStatusBuilder? status) => _$this._status = status;

  AssociateClientVpnTargetNetworkResultBuilder();

  AssociateClientVpnTargetNetworkResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _status = $v.status?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateClientVpnTargetNetworkResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateClientVpnTargetNetworkResult;
  }

  @override
  void update(
      void Function(AssociateClientVpnTargetNetworkResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateClientVpnTargetNetworkResult build() => _build();

  _$AssociateClientVpnTargetNetworkResult _build() {
    _$AssociateClientVpnTargetNetworkResult _$result;
    try {
      _$result = _$v ??
          new _$AssociateClientVpnTargetNetworkResult._(
              associationId: associationId, status: _status?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssociateClientVpnTargetNetworkResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
