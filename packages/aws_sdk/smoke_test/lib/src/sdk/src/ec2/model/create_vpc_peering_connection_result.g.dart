// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vpc_peering_connection_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpcPeeringConnectionResult
    extends CreateVpcPeeringConnectionResult {
  @override
  final VpcPeeringConnection? vpcPeeringConnection;

  factory _$CreateVpcPeeringConnectionResult(
          [void Function(CreateVpcPeeringConnectionResultBuilder)? updates]) =>
      (new CreateVpcPeeringConnectionResultBuilder()..update(updates))._build();

  _$CreateVpcPeeringConnectionResult._({this.vpcPeeringConnection}) : super._();

  @override
  CreateVpcPeeringConnectionResult rebuild(
          void Function(CreateVpcPeeringConnectionResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVpcPeeringConnectionResultBuilder toBuilder() =>
      new CreateVpcPeeringConnectionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVpcPeeringConnectionResult &&
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

class CreateVpcPeeringConnectionResultBuilder
    implements
        Builder<CreateVpcPeeringConnectionResult,
            CreateVpcPeeringConnectionResultBuilder> {
  _$CreateVpcPeeringConnectionResult? _$v;

  VpcPeeringConnectionBuilder? _vpcPeeringConnection;
  VpcPeeringConnectionBuilder get vpcPeeringConnection =>
      _$this._vpcPeeringConnection ??= new VpcPeeringConnectionBuilder();
  set vpcPeeringConnection(VpcPeeringConnectionBuilder? vpcPeeringConnection) =>
      _$this._vpcPeeringConnection = vpcPeeringConnection;

  CreateVpcPeeringConnectionResultBuilder();

  CreateVpcPeeringConnectionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcPeeringConnection = $v.vpcPeeringConnection?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVpcPeeringConnectionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVpcPeeringConnectionResult;
  }

  @override
  void update(void Function(CreateVpcPeeringConnectionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVpcPeeringConnectionResult build() => _build();

  _$CreateVpcPeeringConnectionResult _build() {
    _$CreateVpcPeeringConnectionResult _$result;
    try {
      _$result = _$v ??
          new _$CreateVpcPeeringConnectionResult._(
              vpcPeeringConnection: _vpcPeeringConnection?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpcPeeringConnection';
        _vpcPeeringConnection?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVpcPeeringConnectionResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
