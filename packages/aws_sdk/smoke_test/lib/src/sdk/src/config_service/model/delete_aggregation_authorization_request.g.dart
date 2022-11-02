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
    return $jf($jc(
        $jc(0, authorizedAccountId.hashCode), authorizedAwsRegion.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
