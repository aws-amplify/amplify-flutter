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
    return $jf(
        $jc($jc(0, requesterAccountId.hashCode), requesterAwsRegion.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
