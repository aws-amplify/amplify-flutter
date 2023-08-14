// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_vpc_peering_connection_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceptVpcPeeringConnectionResult
    extends AcceptVpcPeeringConnectionResult {
  @override
  final VpcPeeringConnection? vpcPeeringConnection;

  factory _$AcceptVpcPeeringConnectionResult(
          [void Function(AcceptVpcPeeringConnectionResultBuilder)? updates]) =>
      (new AcceptVpcPeeringConnectionResultBuilder()..update(updates))._build();

  _$AcceptVpcPeeringConnectionResult._({this.vpcPeeringConnection}) : super._();

  @override
  AcceptVpcPeeringConnectionResult rebuild(
          void Function(AcceptVpcPeeringConnectionResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceptVpcPeeringConnectionResultBuilder toBuilder() =>
      new AcceptVpcPeeringConnectionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceptVpcPeeringConnectionResult &&
        vpcPeeringConnection == other.vpcPeeringConnection;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpcPeeringConnection.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AcceptVpcPeeringConnectionResultBuilder
    implements
        Builder<AcceptVpcPeeringConnectionResult,
            AcceptVpcPeeringConnectionResultBuilder> {
  _$AcceptVpcPeeringConnectionResult? _$v;

  VpcPeeringConnectionBuilder? _vpcPeeringConnection;
  VpcPeeringConnectionBuilder get vpcPeeringConnection =>
      _$this._vpcPeeringConnection ??= new VpcPeeringConnectionBuilder();
  set vpcPeeringConnection(VpcPeeringConnectionBuilder? vpcPeeringConnection) =>
      _$this._vpcPeeringConnection = vpcPeeringConnection;

  AcceptVpcPeeringConnectionResultBuilder();

  AcceptVpcPeeringConnectionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcPeeringConnection = $v.vpcPeeringConnection?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceptVpcPeeringConnectionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceptVpcPeeringConnectionResult;
  }

  @override
  void update(void Function(AcceptVpcPeeringConnectionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceptVpcPeeringConnectionResult build() => _build();

  _$AcceptVpcPeeringConnectionResult _build() {
    _$AcceptVpcPeeringConnectionResult _$result;
    try {
      _$result = _$v ??
          new _$AcceptVpcPeeringConnectionResult._(
              vpcPeeringConnection: _vpcPeeringConnection?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpcPeeringConnection';
        _vpcPeeringConnection?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AcceptVpcPeeringConnectionResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
