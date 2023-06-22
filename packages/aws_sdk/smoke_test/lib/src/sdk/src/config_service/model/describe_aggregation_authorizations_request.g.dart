// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_aggregation_authorizations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAggregationAuthorizationsRequest
    extends DescribeAggregationAuthorizationsRequest {
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$DescribeAggregationAuthorizationsRequest(
          [void Function(DescribeAggregationAuthorizationsRequestBuilder)?
              updates]) =>
      (new DescribeAggregationAuthorizationsRequestBuilder()..update(updates))
          ._build();

  _$DescribeAggregationAuthorizationsRequest._(
      {required this.limit, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        limit, r'DescribeAggregationAuthorizationsRequest', 'limit');
  }

  @override
  DescribeAggregationAuthorizationsRequest rebuild(
          void Function(DescribeAggregationAuthorizationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAggregationAuthorizationsRequestBuilder toBuilder() =>
      new DescribeAggregationAuthorizationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAggregationAuthorizationsRequest &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAggregationAuthorizationsRequestBuilder
    implements
        Builder<DescribeAggregationAuthorizationsRequest,
            DescribeAggregationAuthorizationsRequestBuilder> {
  _$DescribeAggregationAuthorizationsRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeAggregationAuthorizationsRequestBuilder() {
    DescribeAggregationAuthorizationsRequest._init(this);
  }

  DescribeAggregationAuthorizationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAggregationAuthorizationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAggregationAuthorizationsRequest;
  }

  @override
  void update(
      void Function(DescribeAggregationAuthorizationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAggregationAuthorizationsRequest build() => _build();

  _$DescribeAggregationAuthorizationsRequest _build() {
    final _$result = _$v ??
        new _$DescribeAggregationAuthorizationsRequest._(
            limit: BuiltValueNullFieldError.checkNotNull(
                limit, r'DescribeAggregationAuthorizationsRequest', 'limit'),
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
