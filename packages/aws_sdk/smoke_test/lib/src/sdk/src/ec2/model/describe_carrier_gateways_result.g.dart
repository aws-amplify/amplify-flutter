// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_carrier_gateways_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeCarrierGatewaysResult extends DescribeCarrierGatewaysResult {
  @override
  final _i2.BuiltList<CarrierGateway>? carrierGateways;
  @override
  final String? nextToken;

  factory _$DescribeCarrierGatewaysResult(
          [void Function(DescribeCarrierGatewaysResultBuilder)? updates]) =>
      (new DescribeCarrierGatewaysResultBuilder()..update(updates))._build();

  _$DescribeCarrierGatewaysResult._({this.carrierGateways, this.nextToken})
      : super._();

  @override
  DescribeCarrierGatewaysResult rebuild(
          void Function(DescribeCarrierGatewaysResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeCarrierGatewaysResultBuilder toBuilder() =>
      new DescribeCarrierGatewaysResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeCarrierGatewaysResult &&
        carrierGateways == other.carrierGateways &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, carrierGateways.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeCarrierGatewaysResultBuilder
    implements
        Builder<DescribeCarrierGatewaysResult,
            DescribeCarrierGatewaysResultBuilder> {
  _$DescribeCarrierGatewaysResult? _$v;

  _i2.ListBuilder<CarrierGateway>? _carrierGateways;
  _i2.ListBuilder<CarrierGateway> get carrierGateways =>
      _$this._carrierGateways ??= new _i2.ListBuilder<CarrierGateway>();
  set carrierGateways(_i2.ListBuilder<CarrierGateway>? carrierGateways) =>
      _$this._carrierGateways = carrierGateways;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeCarrierGatewaysResultBuilder();

  DescribeCarrierGatewaysResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _carrierGateways = $v.carrierGateways?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeCarrierGatewaysResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeCarrierGatewaysResult;
  }

  @override
  void update(void Function(DescribeCarrierGatewaysResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeCarrierGatewaysResult build() => _build();

  _$DescribeCarrierGatewaysResult _build() {
    _$DescribeCarrierGatewaysResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeCarrierGatewaysResult._(
              carrierGateways: _carrierGateways?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'carrierGateways';
        _carrierGateways?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeCarrierGatewaysResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
