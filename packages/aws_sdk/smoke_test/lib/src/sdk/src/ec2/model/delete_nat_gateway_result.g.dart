// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_nat_gateway_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNatGatewayResult extends DeleteNatGatewayResult {
  @override
  final String? natGatewayId;

  factory _$DeleteNatGatewayResult(
          [void Function(DeleteNatGatewayResultBuilder)? updates]) =>
      (new DeleteNatGatewayResultBuilder()..update(updates))._build();

  _$DeleteNatGatewayResult._({this.natGatewayId}) : super._();

  @override
  DeleteNatGatewayResult rebuild(
          void Function(DeleteNatGatewayResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNatGatewayResultBuilder toBuilder() =>
      new DeleteNatGatewayResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNatGatewayResult &&
        natGatewayId == other.natGatewayId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, natGatewayId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteNatGatewayResultBuilder
    implements Builder<DeleteNatGatewayResult, DeleteNatGatewayResultBuilder> {
  _$DeleteNatGatewayResult? _$v;

  String? _natGatewayId;
  String? get natGatewayId => _$this._natGatewayId;
  set natGatewayId(String? natGatewayId) => _$this._natGatewayId = natGatewayId;

  DeleteNatGatewayResultBuilder();

  DeleteNatGatewayResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _natGatewayId = $v.natGatewayId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNatGatewayResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteNatGatewayResult;
  }

  @override
  void update(void Function(DeleteNatGatewayResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNatGatewayResult build() => _build();

  _$DeleteNatGatewayResult _build() {
    final _$result =
        _$v ?? new _$DeleteNatGatewayResult._(natGatewayId: natGatewayId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
