// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_internet_gateways_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInternetGatewaysResult extends DescribeInternetGatewaysResult {
  @override
  final _i2.BuiltList<InternetGateway>? internetGateways;
  @override
  final String? nextToken;

  factory _$DescribeInternetGatewaysResult(
          [void Function(DescribeInternetGatewaysResultBuilder)? updates]) =>
      (new DescribeInternetGatewaysResultBuilder()..update(updates))._build();

  _$DescribeInternetGatewaysResult._({this.internetGateways, this.nextToken})
      : super._();

  @override
  DescribeInternetGatewaysResult rebuild(
          void Function(DescribeInternetGatewaysResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInternetGatewaysResultBuilder toBuilder() =>
      new DescribeInternetGatewaysResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInternetGatewaysResult &&
        internetGateways == other.internetGateways &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, internetGateways.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInternetGatewaysResultBuilder
    implements
        Builder<DescribeInternetGatewaysResult,
            DescribeInternetGatewaysResultBuilder> {
  _$DescribeInternetGatewaysResult? _$v;

  _i2.ListBuilder<InternetGateway>? _internetGateways;
  _i2.ListBuilder<InternetGateway> get internetGateways =>
      _$this._internetGateways ??= new _i2.ListBuilder<InternetGateway>();
  set internetGateways(_i2.ListBuilder<InternetGateway>? internetGateways) =>
      _$this._internetGateways = internetGateways;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeInternetGatewaysResultBuilder();

  DescribeInternetGatewaysResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _internetGateways = $v.internetGateways?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInternetGatewaysResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInternetGatewaysResult;
  }

  @override
  void update(void Function(DescribeInternetGatewaysResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInternetGatewaysResult build() => _build();

  _$DescribeInternetGatewaysResult _build() {
    _$DescribeInternetGatewaysResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeInternetGatewaysResult._(
              internetGateways: _internetGateways?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'internetGateways';
        _internetGateways?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInternetGatewaysResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
