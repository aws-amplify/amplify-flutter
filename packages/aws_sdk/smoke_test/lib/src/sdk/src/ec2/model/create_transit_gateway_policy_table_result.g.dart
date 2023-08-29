// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_policy_table_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayPolicyTableResult
    extends CreateTransitGatewayPolicyTableResult {
  @override
  final TransitGatewayPolicyTable? transitGatewayPolicyTable;

  factory _$CreateTransitGatewayPolicyTableResult(
          [void Function(CreateTransitGatewayPolicyTableResultBuilder)?
              updates]) =>
      (new CreateTransitGatewayPolicyTableResultBuilder()..update(updates))
          ._build();

  _$CreateTransitGatewayPolicyTableResult._({this.transitGatewayPolicyTable})
      : super._();

  @override
  CreateTransitGatewayPolicyTableResult rebuild(
          void Function(CreateTransitGatewayPolicyTableResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayPolicyTableResultBuilder toBuilder() =>
      new CreateTransitGatewayPolicyTableResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayPolicyTableResult &&
        transitGatewayPolicyTable == other.transitGatewayPolicyTable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayPolicyTable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayPolicyTableResultBuilder
    implements
        Builder<CreateTransitGatewayPolicyTableResult,
            CreateTransitGatewayPolicyTableResultBuilder> {
  _$CreateTransitGatewayPolicyTableResult? _$v;

  TransitGatewayPolicyTableBuilder? _transitGatewayPolicyTable;
  TransitGatewayPolicyTableBuilder get transitGatewayPolicyTable =>
      _$this._transitGatewayPolicyTable ??=
          new TransitGatewayPolicyTableBuilder();
  set transitGatewayPolicyTable(
          TransitGatewayPolicyTableBuilder? transitGatewayPolicyTable) =>
      _$this._transitGatewayPolicyTable = transitGatewayPolicyTable;

  CreateTransitGatewayPolicyTableResultBuilder();

  CreateTransitGatewayPolicyTableResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPolicyTable = $v.transitGatewayPolicyTable?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayPolicyTableResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayPolicyTableResult;
  }

  @override
  void update(
      void Function(CreateTransitGatewayPolicyTableResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayPolicyTableResult build() => _build();

  _$CreateTransitGatewayPolicyTableResult _build() {
    _$CreateTransitGatewayPolicyTableResult _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayPolicyTableResult._(
              transitGatewayPolicyTable: _transitGatewayPolicyTable?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayPolicyTable';
        _transitGatewayPolicyTable?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayPolicyTableResult',
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
