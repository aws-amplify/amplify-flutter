// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_transit_gateway_policy_tables_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTransitGatewayPolicyTablesResult
    extends DescribeTransitGatewayPolicyTablesResult {
  @override
  final _i2.BuiltList<TransitGatewayPolicyTable>? transitGatewayPolicyTables;
  @override
  final String? nextToken;

  factory _$DescribeTransitGatewayPolicyTablesResult(
          [void Function(DescribeTransitGatewayPolicyTablesResultBuilder)?
              updates]) =>
      (new DescribeTransitGatewayPolicyTablesResultBuilder()..update(updates))
          ._build();

  _$DescribeTransitGatewayPolicyTablesResult._(
      {this.transitGatewayPolicyTables, this.nextToken})
      : super._();

  @override
  DescribeTransitGatewayPolicyTablesResult rebuild(
          void Function(DescribeTransitGatewayPolicyTablesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTransitGatewayPolicyTablesResultBuilder toBuilder() =>
      new DescribeTransitGatewayPolicyTablesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTransitGatewayPolicyTablesResult &&
        transitGatewayPolicyTables == other.transitGatewayPolicyTables &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayPolicyTables.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTransitGatewayPolicyTablesResultBuilder
    implements
        Builder<DescribeTransitGatewayPolicyTablesResult,
            DescribeTransitGatewayPolicyTablesResultBuilder> {
  _$DescribeTransitGatewayPolicyTablesResult? _$v;

  _i2.ListBuilder<TransitGatewayPolicyTable>? _transitGatewayPolicyTables;
  _i2.ListBuilder<TransitGatewayPolicyTable> get transitGatewayPolicyTables =>
      _$this._transitGatewayPolicyTables ??=
          new _i2.ListBuilder<TransitGatewayPolicyTable>();
  set transitGatewayPolicyTables(
          _i2.ListBuilder<TransitGatewayPolicyTable>?
              transitGatewayPolicyTables) =>
      _$this._transitGatewayPolicyTables = transitGatewayPolicyTables;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeTransitGatewayPolicyTablesResultBuilder();

  DescribeTransitGatewayPolicyTablesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPolicyTables = $v.transitGatewayPolicyTables?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTransitGatewayPolicyTablesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTransitGatewayPolicyTablesResult;
  }

  @override
  void update(
      void Function(DescribeTransitGatewayPolicyTablesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTransitGatewayPolicyTablesResult build() => _build();

  _$DescribeTransitGatewayPolicyTablesResult _build() {
    _$DescribeTransitGatewayPolicyTablesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeTransitGatewayPolicyTablesResult._(
              transitGatewayPolicyTables: _transitGatewayPolicyTables?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayPolicyTables';
        _transitGatewayPolicyTables?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTransitGatewayPolicyTablesResult',
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
