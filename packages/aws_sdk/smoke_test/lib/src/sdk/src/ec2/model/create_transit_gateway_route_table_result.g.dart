// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_route_table_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayRouteTableResult
    extends CreateTransitGatewayRouteTableResult {
  @override
  final TransitGatewayRouteTable? transitGatewayRouteTable;

  factory _$CreateTransitGatewayRouteTableResult(
          [void Function(CreateTransitGatewayRouteTableResultBuilder)?
              updates]) =>
      (new CreateTransitGatewayRouteTableResultBuilder()..update(updates))
          ._build();

  _$CreateTransitGatewayRouteTableResult._({this.transitGatewayRouteTable})
      : super._();

  @override
  CreateTransitGatewayRouteTableResult rebuild(
          void Function(CreateTransitGatewayRouteTableResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayRouteTableResultBuilder toBuilder() =>
      new CreateTransitGatewayRouteTableResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayRouteTableResult &&
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

class CreateTransitGatewayRouteTableResultBuilder
    implements
        Builder<CreateTransitGatewayRouteTableResult,
            CreateTransitGatewayRouteTableResultBuilder> {
  _$CreateTransitGatewayRouteTableResult? _$v;

  TransitGatewayRouteTableBuilder? _transitGatewayRouteTable;
  TransitGatewayRouteTableBuilder get transitGatewayRouteTable =>
      _$this._transitGatewayRouteTable ??=
          new TransitGatewayRouteTableBuilder();
  set transitGatewayRouteTable(
          TransitGatewayRouteTableBuilder? transitGatewayRouteTable) =>
      _$this._transitGatewayRouteTable = transitGatewayRouteTable;

  CreateTransitGatewayRouteTableResultBuilder();

  CreateTransitGatewayRouteTableResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTable = $v.transitGatewayRouteTable?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayRouteTableResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayRouteTableResult;
  }

  @override
  void update(
      void Function(CreateTransitGatewayRouteTableResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayRouteTableResult build() => _build();

  _$CreateTransitGatewayRouteTableResult _build() {
    _$CreateTransitGatewayRouteTableResult _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayRouteTableResult._(
              transitGatewayRouteTable: _transitGatewayRouteTable?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayRouteTable';
        _transitGatewayRouteTable?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayRouteTableResult',
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
