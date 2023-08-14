// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_transit_gateways_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTransitGatewaysResult extends DescribeTransitGatewaysResult {
  @override
  final _i2.BuiltList<TransitGateway>? transitGateways;
  @override
  final String? nextToken;

  factory _$DescribeTransitGatewaysResult(
          [void Function(DescribeTransitGatewaysResultBuilder)? updates]) =>
      (new DescribeTransitGatewaysResultBuilder()..update(updates))._build();

  _$DescribeTransitGatewaysResult._({this.transitGateways, this.nextToken})
      : super._();

  @override
  DescribeTransitGatewaysResult rebuild(
          void Function(DescribeTransitGatewaysResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTransitGatewaysResultBuilder toBuilder() =>
      new DescribeTransitGatewaysResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTransitGatewaysResult &&
        transitGateways == other.transitGateways &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGateways.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTransitGatewaysResultBuilder
    implements
        Builder<DescribeTransitGatewaysResult,
            DescribeTransitGatewaysResultBuilder> {
  _$DescribeTransitGatewaysResult? _$v;

  _i2.ListBuilder<TransitGateway>? _transitGateways;
  _i2.ListBuilder<TransitGateway> get transitGateways =>
      _$this._transitGateways ??= new _i2.ListBuilder<TransitGateway>();
  set transitGateways(_i2.ListBuilder<TransitGateway>? transitGateways) =>
      _$this._transitGateways = transitGateways;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeTransitGatewaysResultBuilder();

  DescribeTransitGatewaysResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGateways = $v.transitGateways?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTransitGatewaysResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTransitGatewaysResult;
  }

  @override
  void update(void Function(DescribeTransitGatewaysResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTransitGatewaysResult build() => _build();

  _$DescribeTransitGatewaysResult _build() {
    _$DescribeTransitGatewaysResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeTransitGatewaysResult._(
              transitGateways: _transitGateways?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGateways';
        _transitGateways?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTransitGatewaysResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
