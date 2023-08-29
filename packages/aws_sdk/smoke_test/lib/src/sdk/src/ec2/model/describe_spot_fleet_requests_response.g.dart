// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_spot_fleet_requests_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSpotFleetRequestsResponse
    extends DescribeSpotFleetRequestsResponse {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<SpotFleetRequestConfig>? spotFleetRequestConfigs;

  factory _$DescribeSpotFleetRequestsResponse(
          [void Function(DescribeSpotFleetRequestsResponseBuilder)? updates]) =>
      (new DescribeSpotFleetRequestsResponseBuilder()..update(updates))
          ._build();

  _$DescribeSpotFleetRequestsResponse._(
      {this.nextToken, this.spotFleetRequestConfigs})
      : super._();

  @override
  DescribeSpotFleetRequestsResponse rebuild(
          void Function(DescribeSpotFleetRequestsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSpotFleetRequestsResponseBuilder toBuilder() =>
      new DescribeSpotFleetRequestsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSpotFleetRequestsResponse &&
        nextToken == other.nextToken &&
        spotFleetRequestConfigs == other.spotFleetRequestConfigs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, spotFleetRequestConfigs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSpotFleetRequestsResponseBuilder
    implements
        Builder<DescribeSpotFleetRequestsResponse,
            DescribeSpotFleetRequestsResponseBuilder> {
  _$DescribeSpotFleetRequestsResponse? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<SpotFleetRequestConfig>? _spotFleetRequestConfigs;
  _i2.ListBuilder<SpotFleetRequestConfig> get spotFleetRequestConfigs =>
      _$this._spotFleetRequestConfigs ??=
          new _i2.ListBuilder<SpotFleetRequestConfig>();
  set spotFleetRequestConfigs(
          _i2.ListBuilder<SpotFleetRequestConfig>? spotFleetRequestConfigs) =>
      _$this._spotFleetRequestConfigs = spotFleetRequestConfigs;

  DescribeSpotFleetRequestsResponseBuilder();

  DescribeSpotFleetRequestsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _spotFleetRequestConfigs = $v.spotFleetRequestConfigs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSpotFleetRequestsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSpotFleetRequestsResponse;
  }

  @override
  void update(
      void Function(DescribeSpotFleetRequestsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSpotFleetRequestsResponse build() => _build();

  _$DescribeSpotFleetRequestsResponse _build() {
    _$DescribeSpotFleetRequestsResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeSpotFleetRequestsResponse._(
              nextToken: nextToken,
              spotFleetRequestConfigs: _spotFleetRequestConfigs?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotFleetRequestConfigs';
        _spotFleetRequestConfigs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSpotFleetRequestsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
