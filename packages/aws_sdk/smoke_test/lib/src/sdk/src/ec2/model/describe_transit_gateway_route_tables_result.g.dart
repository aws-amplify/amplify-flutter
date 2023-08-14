// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_transit_gateway_route_tables_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTransitGatewayRouteTablesResult
    extends DescribeTransitGatewayRouteTablesResult {
  @override
  final _i2.BuiltList<TransitGatewayRouteTable>? transitGatewayRouteTables;
  @override
  final String? nextToken;

  factory _$DescribeTransitGatewayRouteTablesResult(
          [void Function(DescribeTransitGatewayRouteTablesResultBuilder)?
              updates]) =>
      (new DescribeTransitGatewayRouteTablesResultBuilder()..update(updates))
          ._build();

  _$DescribeTransitGatewayRouteTablesResult._(
      {this.transitGatewayRouteTables, this.nextToken})
      : super._();

  @override
  DescribeTransitGatewayRouteTablesResult rebuild(
          void Function(DescribeTransitGatewayRouteTablesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTransitGatewayRouteTablesResultBuilder toBuilder() =>
      new DescribeTransitGatewayRouteTablesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTransitGatewayRouteTablesResult &&
        transitGatewayRouteTables == other.transitGatewayRouteTables &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTables.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTransitGatewayRouteTablesResultBuilder
    implements
        Builder<DescribeTransitGatewayRouteTablesResult,
            DescribeTransitGatewayRouteTablesResultBuilder> {
  _$DescribeTransitGatewayRouteTablesResult? _$v;

  _i2.ListBuilder<TransitGatewayRouteTable>? _transitGatewayRouteTables;
  _i2.ListBuilder<TransitGatewayRouteTable> get transitGatewayRouteTables =>
      _$this._transitGatewayRouteTables ??=
          new _i2.ListBuilder<TransitGatewayRouteTable>();
  set transitGatewayRouteTables(
          _i2.ListBuilder<TransitGatewayRouteTable>?
              transitGatewayRouteTables) =>
      _$this._transitGatewayRouteTables = transitGatewayRouteTables;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeTransitGatewayRouteTablesResultBuilder();

  DescribeTransitGatewayRouteTablesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTables = $v.transitGatewayRouteTables?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTransitGatewayRouteTablesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTransitGatewayRouteTablesResult;
  }

  @override
  void update(
      void Function(DescribeTransitGatewayRouteTablesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTransitGatewayRouteTablesResult build() => _build();

  _$DescribeTransitGatewayRouteTablesResult _build() {
    _$DescribeTransitGatewayRouteTablesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeTransitGatewayRouteTablesResult._(
              transitGatewayRouteTables: _transitGatewayRouteTables?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayRouteTables';
        _transitGatewayRouteTables?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTransitGatewayRouteTablesResult',
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
