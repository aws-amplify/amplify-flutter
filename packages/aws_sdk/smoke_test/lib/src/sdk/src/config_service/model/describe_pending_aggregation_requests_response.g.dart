// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_pending_aggregation_requests_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribePendingAggregationRequestsResponse
    extends DescribePendingAggregationRequestsResponse {
  @override
  final _i3.BuiltList<_i2.PendingAggregationRequest>?
      pendingAggregationRequests;
  @override
  final String? nextToken;

  factory _$DescribePendingAggregationRequestsResponse(
          [void Function(DescribePendingAggregationRequestsResponseBuilder)?
              updates]) =>
      (new DescribePendingAggregationRequestsResponseBuilder()..update(updates))
          ._build();

  _$DescribePendingAggregationRequestsResponse._(
      {this.pendingAggregationRequests, this.nextToken})
      : super._();

  @override
  DescribePendingAggregationRequestsResponse rebuild(
          void Function(DescribePendingAggregationRequestsResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribePendingAggregationRequestsResponseBuilder toBuilder() =>
      new DescribePendingAggregationRequestsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribePendingAggregationRequestsResponse &&
        pendingAggregationRequests == other.pendingAggregationRequests &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pendingAggregationRequests.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribePendingAggregationRequestsResponseBuilder
    implements
        Builder<DescribePendingAggregationRequestsResponse,
            DescribePendingAggregationRequestsResponseBuilder> {
  _$DescribePendingAggregationRequestsResponse? _$v;

  _i3.ListBuilder<_i2.PendingAggregationRequest>? _pendingAggregationRequests;
  _i3.ListBuilder<_i2.PendingAggregationRequest>
      get pendingAggregationRequests => _$this._pendingAggregationRequests ??=
          new _i3.ListBuilder<_i2.PendingAggregationRequest>();
  set pendingAggregationRequests(
          _i3.ListBuilder<_i2.PendingAggregationRequest>?
              pendingAggregationRequests) =>
      _$this._pendingAggregationRequests = pendingAggregationRequests;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribePendingAggregationRequestsResponseBuilder() {
    DescribePendingAggregationRequestsResponse._init(this);
  }

  DescribePendingAggregationRequestsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pendingAggregationRequests = $v.pendingAggregationRequests?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribePendingAggregationRequestsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribePendingAggregationRequestsResponse;
  }

  @override
  void update(
      void Function(DescribePendingAggregationRequestsResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribePendingAggregationRequestsResponse build() => _build();

  _$DescribePendingAggregationRequestsResponse _build() {
    _$DescribePendingAggregationRequestsResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribePendingAggregationRequestsResponse._(
              pendingAggregationRequests: _pendingAggregationRequests?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pendingAggregationRequests';
        _pendingAggregationRequests?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribePendingAggregationRequestsResponse',
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
