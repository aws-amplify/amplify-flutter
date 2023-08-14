// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_route_table_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayRouteTableResult
    extends DeleteTransitGatewayRouteTableResult {
  @override
  final TransitGatewayRouteTable? transitGatewayRouteTable;

  factory _$DeleteTransitGatewayRouteTableResult(
          [void Function(DeleteTransitGatewayRouteTableResultBuilder)?
              updates]) =>
      (new DeleteTransitGatewayRouteTableResultBuilder()..update(updates))
          ._build();

  _$DeleteTransitGatewayRouteTableResult._({this.transitGatewayRouteTable})
      : super._();

  @override
  DeleteTransitGatewayRouteTableResult rebuild(
          void Function(DeleteTransitGatewayRouteTableResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayRouteTableResultBuilder toBuilder() =>
      new DeleteTransitGatewayRouteTableResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayRouteTableResult &&
        transitGatewayRouteTable == other.transitGatewayRouteTable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTransitGatewayRouteTableResultBuilder
    implements
        Builder<DeleteTransitGatewayRouteTableResult,
            DeleteTransitGatewayRouteTableResultBuilder> {
  _$DeleteTransitGatewayRouteTableResult? _$v;

  TransitGatewayRouteTableBuilder? _transitGatewayRouteTable;
  TransitGatewayRouteTableBuilder get transitGatewayRouteTable =>
      _$this._transitGatewayRouteTable ??=
          new TransitGatewayRouteTableBuilder();
  set transitGatewayRouteTable(
          TransitGatewayRouteTableBuilder? transitGatewayRouteTable) =>
      _$this._transitGatewayRouteTable = transitGatewayRouteTable;

  DeleteTransitGatewayRouteTableResultBuilder();

  DeleteTransitGatewayRouteTableResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTable = $v.transitGatewayRouteTable?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayRouteTableResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayRouteTableResult;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayRouteTableResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayRouteTableResult build() => _build();

  _$DeleteTransitGatewayRouteTableResult _build() {
    _$DeleteTransitGatewayRouteTableResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteTransitGatewayRouteTableResult._(
              transitGatewayRouteTable: _transitGatewayRouteTable?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayRouteTable';
        _transitGatewayRouteTable?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteTransitGatewayRouteTableResult',
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
