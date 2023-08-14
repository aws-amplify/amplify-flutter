// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_verified_access_endpoints_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVerifiedAccessEndpointsResult
    extends DescribeVerifiedAccessEndpointsResult {
  @override
  final _i2.BuiltList<VerifiedAccessEndpoint>? verifiedAccessEndpoints;
  @override
  final String? nextToken;

  factory _$DescribeVerifiedAccessEndpointsResult(
          [void Function(DescribeVerifiedAccessEndpointsResultBuilder)?
              updates]) =>
      (new DescribeVerifiedAccessEndpointsResultBuilder()..update(updates))
          ._build();

  _$DescribeVerifiedAccessEndpointsResult._(
      {this.verifiedAccessEndpoints, this.nextToken})
      : super._();

  @override
  DescribeVerifiedAccessEndpointsResult rebuild(
          void Function(DescribeVerifiedAccessEndpointsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVerifiedAccessEndpointsResultBuilder toBuilder() =>
      new DescribeVerifiedAccessEndpointsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVerifiedAccessEndpointsResult &&
        verifiedAccessEndpoints == other.verifiedAccessEndpoints &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessEndpoints.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVerifiedAccessEndpointsResultBuilder
    implements
        Builder<DescribeVerifiedAccessEndpointsResult,
            DescribeVerifiedAccessEndpointsResultBuilder> {
  _$DescribeVerifiedAccessEndpointsResult? _$v;

  _i2.ListBuilder<VerifiedAccessEndpoint>? _verifiedAccessEndpoints;
  _i2.ListBuilder<VerifiedAccessEndpoint> get verifiedAccessEndpoints =>
      _$this._verifiedAccessEndpoints ??=
          new _i2.ListBuilder<VerifiedAccessEndpoint>();
  set verifiedAccessEndpoints(
          _i2.ListBuilder<VerifiedAccessEndpoint>? verifiedAccessEndpoints) =>
      _$this._verifiedAccessEndpoints = verifiedAccessEndpoints;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVerifiedAccessEndpointsResultBuilder();

  DescribeVerifiedAccessEndpointsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessEndpoints = $v.verifiedAccessEndpoints?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVerifiedAccessEndpointsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVerifiedAccessEndpointsResult;
  }

  @override
  void update(
      void Function(DescribeVerifiedAccessEndpointsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVerifiedAccessEndpointsResult build() => _build();

  _$DescribeVerifiedAccessEndpointsResult _build() {
    _$DescribeVerifiedAccessEndpointsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVerifiedAccessEndpointsResult._(
              verifiedAccessEndpoints: _verifiedAccessEndpoints?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessEndpoints';
        _verifiedAccessEndpoints?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVerifiedAccessEndpointsResult',
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
