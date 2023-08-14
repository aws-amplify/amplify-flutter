// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_spot_instance_requests_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSpotInstanceRequestsResult
    extends DescribeSpotInstanceRequestsResult {
  @override
  final _i2.BuiltList<SpotInstanceRequest>? spotInstanceRequests;
  @override
  final String? nextToken;

  factory _$DescribeSpotInstanceRequestsResult(
          [void Function(DescribeSpotInstanceRequestsResultBuilder)?
              updates]) =>
      (new DescribeSpotInstanceRequestsResultBuilder()..update(updates))
          ._build();

  _$DescribeSpotInstanceRequestsResult._(
      {this.spotInstanceRequests, this.nextToken})
      : super._();

  @override
  DescribeSpotInstanceRequestsResult rebuild(
          void Function(DescribeSpotInstanceRequestsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSpotInstanceRequestsResultBuilder toBuilder() =>
      new DescribeSpotInstanceRequestsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSpotInstanceRequestsResult &&
        spotInstanceRequests == other.spotInstanceRequests &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, spotInstanceRequests.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSpotInstanceRequestsResultBuilder
    implements
        Builder<DescribeSpotInstanceRequestsResult,
            DescribeSpotInstanceRequestsResultBuilder> {
  _$DescribeSpotInstanceRequestsResult? _$v;

  _i2.ListBuilder<SpotInstanceRequest>? _spotInstanceRequests;
  _i2.ListBuilder<SpotInstanceRequest> get spotInstanceRequests =>
      _$this._spotInstanceRequests ??=
          new _i2.ListBuilder<SpotInstanceRequest>();
  set spotInstanceRequests(
          _i2.ListBuilder<SpotInstanceRequest>? spotInstanceRequests) =>
      _$this._spotInstanceRequests = spotInstanceRequests;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeSpotInstanceRequestsResultBuilder();

  DescribeSpotInstanceRequestsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _spotInstanceRequests = $v.spotInstanceRequests?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSpotInstanceRequestsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSpotInstanceRequestsResult;
  }

  @override
  void update(
      void Function(DescribeSpotInstanceRequestsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSpotInstanceRequestsResult build() => _build();

  _$DescribeSpotInstanceRequestsResult _build() {
    _$DescribeSpotInstanceRequestsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeSpotInstanceRequestsResult._(
              spotInstanceRequests: _spotInstanceRequests?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotInstanceRequests';
        _spotInstanceRequests?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSpotInstanceRequestsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
