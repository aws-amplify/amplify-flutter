// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_client_vpn_target_network_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateClientVpnTargetNetworkResult
    extends DisassociateClientVpnTargetNetworkResult {
  @override
  final String? associationId;
  @override
  final AssociationStatus? status;

  factory _$DisassociateClientVpnTargetNetworkResult(
          [void Function(DisassociateClientVpnTargetNetworkResultBuilder)?
              updates]) =>
      (new DisassociateClientVpnTargetNetworkResultBuilder()..update(updates))
          ._build();

  _$DisassociateClientVpnTargetNetworkResult._(
      {this.associationId, this.status})
      : super._();

  @override
  DisassociateClientVpnTargetNetworkResult rebuild(
          void Function(DisassociateClientVpnTargetNetworkResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateClientVpnTargetNetworkResultBuilder toBuilder() =>
      new DisassociateClientVpnTargetNetworkResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateClientVpnTargetNetworkResult &&
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

class DisassociateClientVpnTargetNetworkResultBuilder
    implements
        Builder<DisassociateClientVpnTargetNetworkResult,
            DisassociateClientVpnTargetNetworkResultBuilder> {
  _$DisassociateClientVpnTargetNetworkResult? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  AssociationStatusBuilder? _status;
  AssociationStatusBuilder get status =>
      _$this._status ??= new AssociationStatusBuilder();
  set status(AssociationStatusBuilder? status) => _$this._status = status;

  DisassociateClientVpnTargetNetworkResultBuilder();

  DisassociateClientVpnTargetNetworkResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _status = $v.status?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateClientVpnTargetNetworkResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateClientVpnTargetNetworkResult;
  }

  @override
  void update(
      void Function(DisassociateClientVpnTargetNetworkResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateClientVpnTargetNetworkResult build() => _build();

  _$DisassociateClientVpnTargetNetworkResult _build() {
    _$DisassociateClientVpnTargetNetworkResult _$result;
    try {
      _$result = _$v ??
          new _$DisassociateClientVpnTargetNetworkResult._(
              associationId: associationId, status: _status?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisassociateClientVpnTargetNetworkResult',
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
