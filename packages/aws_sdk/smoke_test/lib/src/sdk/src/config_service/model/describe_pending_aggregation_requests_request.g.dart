// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_pending_aggregation_requests_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribePendingAggregationRequestsRequest
    extends DescribePendingAggregationRequestsRequest {
  @override
  final int? limit;
  @override
  final String? nextToken;

  factory _$DescribePendingAggregationRequestsRequest(
          [void Function(DescribePendingAggregationRequestsRequestBuilder)?
              updates]) =>
      (new DescribePendingAggregationRequestsRequestBuilder()..update(updates))
          ._build();

  _$DescribePendingAggregationRequestsRequest._({this.limit, this.nextToken})
      : super._();

  @override
  DescribePendingAggregationRequestsRequest rebuild(
          void Function(DescribePendingAggregationRequestsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribePendingAggregationRequestsRequestBuilder toBuilder() =>
      new DescribePendingAggregationRequestsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribePendingAggregationRequestsRequest &&
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

class DescribePendingAggregationRequestsRequestBuilder
    implements
        Builder<DescribePendingAggregationRequestsRequest,
            DescribePendingAggregationRequestsRequestBuilder> {
  _$DescribePendingAggregationRequestsRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribePendingAggregationRequestsRequestBuilder() {
    DescribePendingAggregationRequestsRequest._init(this);
  }

  DescribePendingAggregationRequestsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribePendingAggregationRequestsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribePendingAggregationRequestsRequest;
  }

  @override
  void update(
      void Function(DescribePendingAggregationRequestsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribePendingAggregationRequestsRequest build() => _build();

  _$DescribePendingAggregationRequestsRequest _build() {
    final _$result = _$v ??
        new _$DescribePendingAggregationRequestsRequest._(
            limit: limit, nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
