// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_local_gateways_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLocalGatewaysResult extends DescribeLocalGatewaysResult {
  @override
  final _i2.BuiltList<LocalGateway>? localGateways;
  @override
  final String? nextToken;

  factory _$DescribeLocalGatewaysResult(
          [void Function(DescribeLocalGatewaysResultBuilder)? updates]) =>
      (new DescribeLocalGatewaysResultBuilder()..update(updates))._build();

  _$DescribeLocalGatewaysResult._({this.localGateways, this.nextToken})
      : super._();

  @override
  DescribeLocalGatewaysResult rebuild(
          void Function(DescribeLocalGatewaysResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLocalGatewaysResultBuilder toBuilder() =>
      new DescribeLocalGatewaysResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLocalGatewaysResult &&
        localGateways == other.localGateways &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGateways.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLocalGatewaysResultBuilder
    implements
        Builder<DescribeLocalGatewaysResult,
            DescribeLocalGatewaysResultBuilder> {
  _$DescribeLocalGatewaysResult? _$v;

  _i2.ListBuilder<LocalGateway>? _localGateways;
  _i2.ListBuilder<LocalGateway> get localGateways =>
      _$this._localGateways ??= new _i2.ListBuilder<LocalGateway>();
  set localGateways(_i2.ListBuilder<LocalGateway>? localGateways) =>
      _$this._localGateways = localGateways;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeLocalGatewaysResultBuilder();

  DescribeLocalGatewaysResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGateways = $v.localGateways?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLocalGatewaysResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLocalGatewaysResult;
  }

  @override
  void update(void Function(DescribeLocalGatewaysResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLocalGatewaysResult build() => _build();

  _$DescribeLocalGatewaysResult _build() {
    _$DescribeLocalGatewaysResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeLocalGatewaysResult._(
              localGateways: _localGateways?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localGateways';
        _localGateways?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLocalGatewaysResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
