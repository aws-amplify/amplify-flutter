// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_egress_only_internet_gateways_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeEgressOnlyInternetGatewaysResult
    extends DescribeEgressOnlyInternetGatewaysResult {
  @override
  final _i2.BuiltList<EgressOnlyInternetGateway>? egressOnlyInternetGateways;
  @override
  final String? nextToken;

  factory _$DescribeEgressOnlyInternetGatewaysResult(
          [void Function(DescribeEgressOnlyInternetGatewaysResultBuilder)?
              updates]) =>
      (new DescribeEgressOnlyInternetGatewaysResultBuilder()..update(updates))
          ._build();

  _$DescribeEgressOnlyInternetGatewaysResult._(
      {this.egressOnlyInternetGateways, this.nextToken})
      : super._();

  @override
  DescribeEgressOnlyInternetGatewaysResult rebuild(
          void Function(DescribeEgressOnlyInternetGatewaysResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeEgressOnlyInternetGatewaysResultBuilder toBuilder() =>
      new DescribeEgressOnlyInternetGatewaysResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeEgressOnlyInternetGatewaysResult &&
        egressOnlyInternetGateways == other.egressOnlyInternetGateways &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, egressOnlyInternetGateways.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeEgressOnlyInternetGatewaysResultBuilder
    implements
        Builder<DescribeEgressOnlyInternetGatewaysResult,
            DescribeEgressOnlyInternetGatewaysResultBuilder> {
  _$DescribeEgressOnlyInternetGatewaysResult? _$v;

  _i2.ListBuilder<EgressOnlyInternetGateway>? _egressOnlyInternetGateways;
  _i2.ListBuilder<EgressOnlyInternetGateway> get egressOnlyInternetGateways =>
      _$this._egressOnlyInternetGateways ??=
          new _i2.ListBuilder<EgressOnlyInternetGateway>();
  set egressOnlyInternetGateways(
          _i2.ListBuilder<EgressOnlyInternetGateway>?
              egressOnlyInternetGateways) =>
      _$this._egressOnlyInternetGateways = egressOnlyInternetGateways;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeEgressOnlyInternetGatewaysResultBuilder();

  DescribeEgressOnlyInternetGatewaysResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _egressOnlyInternetGateways = $v.egressOnlyInternetGateways?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeEgressOnlyInternetGatewaysResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeEgressOnlyInternetGatewaysResult;
  }

  @override
  void update(
      void Function(DescribeEgressOnlyInternetGatewaysResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeEgressOnlyInternetGatewaysResult build() => _build();

  _$DescribeEgressOnlyInternetGatewaysResult _build() {
    _$DescribeEgressOnlyInternetGatewaysResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeEgressOnlyInternetGatewaysResult._(
              egressOnlyInternetGateways: _egressOnlyInternetGateways?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'egressOnlyInternetGateways';
        _egressOnlyInternetGateways?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeEgressOnlyInternetGatewaysResult',
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
