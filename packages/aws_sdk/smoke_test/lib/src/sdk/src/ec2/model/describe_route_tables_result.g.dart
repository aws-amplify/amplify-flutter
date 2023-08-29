// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_route_tables_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeRouteTablesResult extends DescribeRouteTablesResult {
  @override
  final _i2.BuiltList<RouteTable>? routeTables;
  @override
  final String? nextToken;

  factory _$DescribeRouteTablesResult(
          [void Function(DescribeRouteTablesResultBuilder)? updates]) =>
      (new DescribeRouteTablesResultBuilder()..update(updates))._build();

  _$DescribeRouteTablesResult._({this.routeTables, this.nextToken}) : super._();

  @override
  DescribeRouteTablesResult rebuild(
          void Function(DescribeRouteTablesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeRouteTablesResultBuilder toBuilder() =>
      new DescribeRouteTablesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeRouteTablesResult &&
        routeTables == other.routeTables &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, routeTables.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeRouteTablesResultBuilder
    implements
        Builder<DescribeRouteTablesResult, DescribeRouteTablesResultBuilder> {
  _$DescribeRouteTablesResult? _$v;

  _i2.ListBuilder<RouteTable>? _routeTables;
  _i2.ListBuilder<RouteTable> get routeTables =>
      _$this._routeTables ??= new _i2.ListBuilder<RouteTable>();
  set routeTables(_i2.ListBuilder<RouteTable>? routeTables) =>
      _$this._routeTables = routeTables;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeRouteTablesResultBuilder();

  DescribeRouteTablesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _routeTables = $v.routeTables?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeRouteTablesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeRouteTablesResult;
  }

  @override
  void update(void Function(DescribeRouteTablesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeRouteTablesResult build() => _build();

  _$DescribeRouteTablesResult _build() {
    _$DescribeRouteTablesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeRouteTablesResult._(
              routeTables: _routeTables?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'routeTables';
        _routeTables?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeRouteTablesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
