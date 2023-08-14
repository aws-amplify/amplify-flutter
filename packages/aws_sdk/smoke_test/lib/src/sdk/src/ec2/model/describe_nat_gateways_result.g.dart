// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_nat_gateways_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNatGatewaysResult extends DescribeNatGatewaysResult {
  @override
  final _i2.BuiltList<NatGateway>? natGateways;
  @override
  final String? nextToken;

  factory _$DescribeNatGatewaysResult(
          [void Function(DescribeNatGatewaysResultBuilder)? updates]) =>
      (new DescribeNatGatewaysResultBuilder()..update(updates))._build();

  _$DescribeNatGatewaysResult._({this.natGateways, this.nextToken}) : super._();

  @override
  DescribeNatGatewaysResult rebuild(
          void Function(DescribeNatGatewaysResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNatGatewaysResultBuilder toBuilder() =>
      new DescribeNatGatewaysResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNatGatewaysResult &&
        natGateways == other.natGateways &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, natGateways.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNatGatewaysResultBuilder
    implements
        Builder<DescribeNatGatewaysResult, DescribeNatGatewaysResultBuilder> {
  _$DescribeNatGatewaysResult? _$v;

  _i2.ListBuilder<NatGateway>? _natGateways;
  _i2.ListBuilder<NatGateway> get natGateways =>
      _$this._natGateways ??= new _i2.ListBuilder<NatGateway>();
  set natGateways(_i2.ListBuilder<NatGateway>? natGateways) =>
      _$this._natGateways = natGateways;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeNatGatewaysResultBuilder();

  DescribeNatGatewaysResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _natGateways = $v.natGateways?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNatGatewaysResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNatGatewaysResult;
  }

  @override
  void update(void Function(DescribeNatGatewaysResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNatGatewaysResult build() => _build();

  _$DescribeNatGatewaysResult _build() {
    _$DescribeNatGatewaysResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeNatGatewaysResult._(
              natGateways: _natGateways?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'natGateways';
        _natGateways?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeNatGatewaysResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
