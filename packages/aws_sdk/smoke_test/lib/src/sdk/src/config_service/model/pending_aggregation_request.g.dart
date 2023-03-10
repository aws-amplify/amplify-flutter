// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.pending_aggregation_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PendingAggregationRequest extends PendingAggregationRequest {
  @override
  final String? requesterAccountId;
  @override
  final String? requesterAwsRegion;

  factory _$PendingAggregationRequest(
          [void Function(PendingAggregationRequestBuilder)? updates]) =>
      (new PendingAggregationRequestBuilder()..update(updates))._build();

  _$PendingAggregationRequest._(
      {this.requesterAccountId, this.requesterAwsRegion})
      : super._();

  @override
  PendingAggregationRequest rebuild(
          void Function(PendingAggregationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PendingAggregationRequestBuilder toBuilder() =>
      new PendingAggregationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PendingAggregationRequest &&
        requesterAccountId == other.requesterAccountId &&
        requesterAwsRegion == other.requesterAwsRegion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requesterAccountId.hashCode);
    _$hash = $jc(_$hash, requesterAwsRegion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PendingAggregationRequestBuilder
    implements
        Builder<PendingAggregationRequest, PendingAggregationRequestBuilder> {
  _$PendingAggregationRequest? _$v;

  String? _requesterAccountId;
  String? get requesterAccountId => _$this._requesterAccountId;
  set requesterAccountId(String? requesterAccountId) =>
      _$this._requesterAccountId = requesterAccountId;

  String? _requesterAwsRegion;
  String? get requesterAwsRegion => _$this._requesterAwsRegion;
  set requesterAwsRegion(String? requesterAwsRegion) =>
      _$this._requesterAwsRegion = requesterAwsRegion;

  PendingAggregationRequestBuilder() {
    PendingAggregationRequest._init(this);
  }

  PendingAggregationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requesterAccountId = $v.requesterAccountId;
      _requesterAwsRegion = $v.requesterAwsRegion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PendingAggregationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PendingAggregationRequest;
  }

  @override
  void update(void Function(PendingAggregationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PendingAggregationRequest build() => _build();

  _$PendingAggregationRequest _build() {
    final _$result = _$v ??
        new _$PendingAggregationRequest._(
            requesterAccountId: requesterAccountId,
            requesterAwsRegion: requesterAwsRegion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
