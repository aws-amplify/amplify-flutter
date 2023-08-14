// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_local_gateway_route_tables_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLocalGatewayRouteTablesResult
    extends DescribeLocalGatewayRouteTablesResult {
  @override
  final _i2.BuiltList<LocalGatewayRouteTable>? localGatewayRouteTables;
  @override
  final String? nextToken;

  factory _$DescribeLocalGatewayRouteTablesResult(
          [void Function(DescribeLocalGatewayRouteTablesResultBuilder)?
              updates]) =>
      (new DescribeLocalGatewayRouteTablesResultBuilder()..update(updates))
          ._build();

  _$DescribeLocalGatewayRouteTablesResult._(
      {this.localGatewayRouteTables, this.nextToken})
      : super._();

  @override
  DescribeLocalGatewayRouteTablesResult rebuild(
          void Function(DescribeLocalGatewayRouteTablesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLocalGatewayRouteTablesResultBuilder toBuilder() =>
      new DescribeLocalGatewayRouteTablesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLocalGatewayRouteTablesResult &&
        localGatewayRouteTables == other.localGatewayRouteTables &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayRouteTables.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLocalGatewayRouteTablesResultBuilder
    implements
        Builder<DescribeLocalGatewayRouteTablesResult,
            DescribeLocalGatewayRouteTablesResultBuilder> {
  _$DescribeLocalGatewayRouteTablesResult? _$v;

  _i2.ListBuilder<LocalGatewayRouteTable>? _localGatewayRouteTables;
  _i2.ListBuilder<LocalGatewayRouteTable> get localGatewayRouteTables =>
      _$this._localGatewayRouteTables ??=
          new _i2.ListBuilder<LocalGatewayRouteTable>();
  set localGatewayRouteTables(
          _i2.ListBuilder<LocalGatewayRouteTable>? localGatewayRouteTables) =>
      _$this._localGatewayRouteTables = localGatewayRouteTables;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeLocalGatewayRouteTablesResultBuilder();

  DescribeLocalGatewayRouteTablesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTables = $v.localGatewayRouteTables?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLocalGatewayRouteTablesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLocalGatewayRouteTablesResult;
  }

  @override
  void update(
      void Function(DescribeLocalGatewayRouteTablesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLocalGatewayRouteTablesResult build() => _build();

  _$DescribeLocalGatewayRouteTablesResult _build() {
    _$DescribeLocalGatewayRouteTablesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeLocalGatewayRouteTablesResult._(
              localGatewayRouteTables: _localGatewayRouteTables?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localGatewayRouteTables';
        _localGatewayRouteTables?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLocalGatewayRouteTablesResult',
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
