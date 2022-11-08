// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_request_validator_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteRequestValidatorRequest extends DeleteRequestValidatorRequest {
  @override
  final String requestValidatorId;
  @override
  final String restApiId;

  factory _$DeleteRequestValidatorRequest(
          [void Function(DeleteRequestValidatorRequestBuilder)? updates]) =>
      (new DeleteRequestValidatorRequestBuilder()..update(updates))._build();

  _$DeleteRequestValidatorRequest._(
      {required this.requestValidatorId, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(requestValidatorId,
        r'DeleteRequestValidatorRequest', 'requestValidatorId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteRequestValidatorRequest', 'restApiId');
  }

  @override
  DeleteRequestValidatorRequest rebuild(
          void Function(DeleteRequestValidatorRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteRequestValidatorRequestBuilder toBuilder() =>
      new DeleteRequestValidatorRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteRequestValidatorRequest &&
        requestValidatorId == other.requestValidatorId &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, requestValidatorId.hashCode), restApiId.hashCode));
  }
}

class DeleteRequestValidatorRequestBuilder
    implements
        Builder<DeleteRequestValidatorRequest,
            DeleteRequestValidatorRequestBuilder> {
  _$DeleteRequestValidatorRequest? _$v;

  String? _requestValidatorId;
  String? get requestValidatorId => _$this._requestValidatorId;
  set requestValidatorId(String? requestValidatorId) =>
      _$this._requestValidatorId = requestValidatorId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  DeleteRequestValidatorRequestBuilder() {
    DeleteRequestValidatorRequest._init(this);
  }

  DeleteRequestValidatorRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestValidatorId = $v.requestValidatorId;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteRequestValidatorRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteRequestValidatorRequest;
  }

  @override
  void update(void Function(DeleteRequestValidatorRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteRequestValidatorRequest build() => _build();

  _$DeleteRequestValidatorRequest _build() {
    final _$result = _$v ??
        new _$DeleteRequestValidatorRequest._(
            requestValidatorId: BuiltValueNullFieldError.checkNotNull(
                requestValidatorId,
                r'DeleteRequestValidatorRequest',
                'requestValidatorId'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteRequestValidatorRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteRequestValidatorRequestPayload
    extends DeleteRequestValidatorRequestPayload {
  factory _$DeleteRequestValidatorRequestPayload(
          [void Function(DeleteRequestValidatorRequestPayloadBuilder)?
              updates]) =>
      (new DeleteRequestValidatorRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteRequestValidatorRequestPayload._() : super._();

  @override
  DeleteRequestValidatorRequestPayload rebuild(
          void Function(DeleteRequestValidatorRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteRequestValidatorRequestPayloadBuilder toBuilder() =>
      new DeleteRequestValidatorRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteRequestValidatorRequestPayload;
  }

  @override
  int get hashCode {
    return 325726949;
  }
}

class DeleteRequestValidatorRequestPayloadBuilder
    implements
        Builder<DeleteRequestValidatorRequestPayload,
            DeleteRequestValidatorRequestPayloadBuilder> {
  _$DeleteRequestValidatorRequestPayload? _$v;

  DeleteRequestValidatorRequestPayloadBuilder() {
    DeleteRequestValidatorRequestPayload._init(this);
  }

  @override
  void replace(DeleteRequestValidatorRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteRequestValidatorRequestPayload;
  }

  @override
  void update(
      void Function(DeleteRequestValidatorRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteRequestValidatorRequestPayload build() => _build();

  _$DeleteRequestValidatorRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteRequestValidatorRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
