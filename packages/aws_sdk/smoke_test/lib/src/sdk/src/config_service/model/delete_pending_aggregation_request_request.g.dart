// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_pending_aggregation_request_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeletePendingAggregationRequestRequest
    extends DeletePendingAggregationRequestRequest {
  @override
  final String requesterAccountId;
  @override
  final String requesterAwsRegion;

  factory _$DeletePendingAggregationRequestRequest(
          [void Function(DeletePendingAggregationRequestRequestBuilder)?
              updates]) =>
      (new DeletePendingAggregationRequestRequestBuilder()..update(updates))
          ._build();

  _$DeletePendingAggregationRequestRequest._(
      {required this.requesterAccountId, required this.requesterAwsRegion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(requesterAccountId,
        r'DeletePendingAggregationRequestRequest', 'requesterAccountId');
    BuiltValueNullFieldError.checkNotNull(requesterAwsRegion,
        r'DeletePendingAggregationRequestRequest', 'requesterAwsRegion');
  }

  @override
  DeletePendingAggregationRequestRequest rebuild(
          void Function(DeletePendingAggregationRequestRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeletePendingAggregationRequestRequestBuilder toBuilder() =>
      new DeletePendingAggregationRequestRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeletePendingAggregationRequestRequest &&
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

class DeletePendingAggregationRequestRequestBuilder
    implements
        Builder<DeletePendingAggregationRequestRequest,
            DeletePendingAggregationRequestRequestBuilder> {
  _$DeletePendingAggregationRequestRequest? _$v;

  String? _requesterAccountId;
  String? get requesterAccountId => _$this._requesterAccountId;
  set requesterAccountId(String? requesterAccountId) =>
      _$this._requesterAccountId = requesterAccountId;

  String? _requesterAwsRegion;
  String? get requesterAwsRegion => _$this._requesterAwsRegion;
  set requesterAwsRegion(String? requesterAwsRegion) =>
      _$this._requesterAwsRegion = requesterAwsRegion;

  DeletePendingAggregationRequestRequestBuilder() {
    DeletePendingAggregationRequestRequest._init(this);
  }

  DeletePendingAggregationRequestRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requesterAccountId = $v.requesterAccountId;
      _requesterAwsRegion = $v.requesterAwsRegion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeletePendingAggregationRequestRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeletePendingAggregationRequestRequest;
  }

  @override
  void update(
      void Function(DeletePendingAggregationRequestRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeletePendingAggregationRequestRequest build() => _build();

  _$DeletePendingAggregationRequestRequest _build() {
    final _$result = _$v ??
        new _$DeletePendingAggregationRequestRequest._(
            requesterAccountId: BuiltValueNullFieldError.checkNotNull(
                requesterAccountId,
                r'DeletePendingAggregationRequestRequest',
                'requesterAccountId'),
            requesterAwsRegion: BuiltValueNullFieldError.checkNotNull(
                requesterAwsRegion,
                r'DeletePendingAggregationRequestRequest',
                'requesterAwsRegion'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
