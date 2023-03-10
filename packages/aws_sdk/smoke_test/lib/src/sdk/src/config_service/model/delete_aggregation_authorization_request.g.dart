// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_aggregation_authorization_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteAggregationAuthorizationRequest
    extends DeleteAggregationAuthorizationRequest {
  @override
  final String authorizedAccountId;
  @override
  final String authorizedAwsRegion;

  factory _$DeleteAggregationAuthorizationRequest(
          [void Function(DeleteAggregationAuthorizationRequestBuilder)?
              updates]) =>
      (new DeleteAggregationAuthorizationRequestBuilder()..update(updates))
          ._build();

  _$DeleteAggregationAuthorizationRequest._(
      {required this.authorizedAccountId, required this.authorizedAwsRegion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(authorizedAccountId,
        r'DeleteAggregationAuthorizationRequest', 'authorizedAccountId');
    BuiltValueNullFieldError.checkNotNull(authorizedAwsRegion,
        r'DeleteAggregationAuthorizationRequest', 'authorizedAwsRegion');
  }

  @override
  DeleteAggregationAuthorizationRequest rebuild(
          void Function(DeleteAggregationAuthorizationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteAggregationAuthorizationRequestBuilder toBuilder() =>
      new DeleteAggregationAuthorizationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteAggregationAuthorizationRequest &&
        authorizedAccountId == other.authorizedAccountId &&
        authorizedAwsRegion == other.authorizedAwsRegion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authorizedAccountId.hashCode);
    _$hash = $jc(_$hash, authorizedAwsRegion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteAggregationAuthorizationRequestBuilder
    implements
        Builder<DeleteAggregationAuthorizationRequest,
            DeleteAggregationAuthorizationRequestBuilder> {
  _$DeleteAggregationAuthorizationRequest? _$v;

  String? _authorizedAccountId;
  String? get authorizedAccountId => _$this._authorizedAccountId;
  set authorizedAccountId(String? authorizedAccountId) =>
      _$this._authorizedAccountId = authorizedAccountId;

  String? _authorizedAwsRegion;
  String? get authorizedAwsRegion => _$this._authorizedAwsRegion;
  set authorizedAwsRegion(String? authorizedAwsRegion) =>
      _$this._authorizedAwsRegion = authorizedAwsRegion;

  DeleteAggregationAuthorizationRequestBuilder() {
    DeleteAggregationAuthorizationRequest._init(this);
  }

  DeleteAggregationAuthorizationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorizedAccountId = $v.authorizedAccountId;
      _authorizedAwsRegion = $v.authorizedAwsRegion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteAggregationAuthorizationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteAggregationAuthorizationRequest;
  }

  @override
  void update(
      void Function(DeleteAggregationAuthorizationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteAggregationAuthorizationRequest build() => _build();

  _$DeleteAggregationAuthorizationRequest _build() {
    final _$result = _$v ??
        new _$DeleteAggregationAuthorizationRequest._(
            authorizedAccountId: BuiltValueNullFieldError.checkNotNull(
                authorizedAccountId,
                r'DeleteAggregationAuthorizationRequest',
                'authorizedAccountId'),
            authorizedAwsRegion: BuiltValueNullFieldError.checkNotNull(
                authorizedAwsRegion,
                r'DeleteAggregationAuthorizationRequest',
                'authorizedAwsRegion'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
