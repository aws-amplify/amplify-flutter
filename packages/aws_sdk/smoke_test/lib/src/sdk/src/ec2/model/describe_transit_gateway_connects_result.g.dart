// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_transit_gateway_connects_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTransitGatewayConnectsResult
    extends DescribeTransitGatewayConnectsResult {
  @override
  final _i2.BuiltList<TransitGatewayConnect>? transitGatewayConnects;
  @override
  final String? nextToken;

  factory _$DescribeTransitGatewayConnectsResult(
          [void Function(DescribeTransitGatewayConnectsResultBuilder)?
              updates]) =>
      (new DescribeTransitGatewayConnectsResultBuilder()..update(updates))
          ._build();

  _$DescribeTransitGatewayConnectsResult._(
      {this.transitGatewayConnects, this.nextToken})
      : super._();

  @override
  DescribeTransitGatewayConnectsResult rebuild(
          void Function(DescribeTransitGatewayConnectsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTransitGatewayConnectsResultBuilder toBuilder() =>
      new DescribeTransitGatewayConnectsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTransitGatewayConnectsResult &&
        transitGatewayConnects == other.transitGatewayConnects &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayConnects.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTransitGatewayConnectsResultBuilder
    implements
        Builder<DescribeTransitGatewayConnectsResult,
            DescribeTransitGatewayConnectsResultBuilder> {
  _$DescribeTransitGatewayConnectsResult? _$v;

  _i2.ListBuilder<TransitGatewayConnect>? _transitGatewayConnects;
  _i2.ListBuilder<TransitGatewayConnect> get transitGatewayConnects =>
      _$this._transitGatewayConnects ??=
          new _i2.ListBuilder<TransitGatewayConnect>();
  set transitGatewayConnects(
          _i2.ListBuilder<TransitGatewayConnect>? transitGatewayConnects) =>
      _$this._transitGatewayConnects = transitGatewayConnects;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeTransitGatewayConnectsResultBuilder();

  DescribeTransitGatewayConnectsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayConnects = $v.transitGatewayConnects?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTransitGatewayConnectsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTransitGatewayConnectsResult;
  }

  @override
  void update(
      void Function(DescribeTransitGatewayConnectsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTransitGatewayConnectsResult build() => _build();

  _$DescribeTransitGatewayConnectsResult _build() {
    _$DescribeTransitGatewayConnectsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeTransitGatewayConnectsResult._(
              transitGatewayConnects: _transitGatewayConnects?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayConnects';
        _transitGatewayConnects?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTransitGatewayConnectsResult',
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
