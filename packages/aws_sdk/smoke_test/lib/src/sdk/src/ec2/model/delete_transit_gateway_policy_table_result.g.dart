// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_policy_table_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayPolicyTableResult
    extends DeleteTransitGatewayPolicyTableResult {
  @override
  final TransitGatewayPolicyTable? transitGatewayPolicyTable;

  factory _$DeleteTransitGatewayPolicyTableResult(
          [void Function(DeleteTransitGatewayPolicyTableResultBuilder)?
              updates]) =>
      (new DeleteTransitGatewayPolicyTableResultBuilder()..update(updates))
          ._build();

  _$DeleteTransitGatewayPolicyTableResult._({this.transitGatewayPolicyTable})
      : super._();

  @override
  DeleteTransitGatewayPolicyTableResult rebuild(
          void Function(DeleteTransitGatewayPolicyTableResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayPolicyTableResultBuilder toBuilder() =>
      new DeleteTransitGatewayPolicyTableResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayPolicyTableResult &&
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

class DeleteTransitGatewayPolicyTableResultBuilder
    implements
        Builder<DeleteTransitGatewayPolicyTableResult,
            DeleteTransitGatewayPolicyTableResultBuilder> {
  _$DeleteTransitGatewayPolicyTableResult? _$v;

  TransitGatewayPolicyTableBuilder? _transitGatewayPolicyTable;
  TransitGatewayPolicyTableBuilder get transitGatewayPolicyTable =>
      _$this._transitGatewayPolicyTable ??=
          new TransitGatewayPolicyTableBuilder();
  set transitGatewayPolicyTable(
          TransitGatewayPolicyTableBuilder? transitGatewayPolicyTable) =>
      _$this._transitGatewayPolicyTable = transitGatewayPolicyTable;

  DeleteTransitGatewayPolicyTableResultBuilder();

  DeleteTransitGatewayPolicyTableResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPolicyTable = $v.transitGatewayPolicyTable?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayPolicyTableResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayPolicyTableResult;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayPolicyTableResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayPolicyTableResult build() => _build();

  _$DeleteTransitGatewayPolicyTableResult _build() {
    _$DeleteTransitGatewayPolicyTableResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteTransitGatewayPolicyTableResult._(
              transitGatewayPolicyTable: _transitGatewayPolicyTable?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayPolicyTable';
        _transitGatewayPolicyTable?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteTransitGatewayPolicyTableResult',
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
