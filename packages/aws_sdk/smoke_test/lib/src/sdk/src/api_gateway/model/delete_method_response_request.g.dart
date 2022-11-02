// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_method_response_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteMethodResponseRequest extends DeleteMethodResponseRequest {
  @override
  final String httpMethod;
  @override
  final String resourceId;
  @override
  final String restApiId;
  @override
  final String statusCode;

  factory _$DeleteMethodResponseRequest(
          [void Function(DeleteMethodResponseRequestBuilder)? updates]) =>
      (new DeleteMethodResponseRequestBuilder()..update(updates))._build();

  _$DeleteMethodResponseRequest._(
      {required this.httpMethod,
      required this.resourceId,
      required this.restApiId,
      required this.statusCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'DeleteMethodResponseRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'DeleteMethodResponseRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteMethodResponseRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'DeleteMethodResponseRequest', 'statusCode');
  }

  @override
  DeleteMethodResponseRequest rebuild(
          void Function(DeleteMethodResponseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteMethodResponseRequestBuilder toBuilder() =>
      new DeleteMethodResponseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteMethodResponseRequest &&
        httpMethod == other.httpMethod &&
        resourceId == other.resourceId &&
        restApiId == other.restApiId &&
        statusCode == other.statusCode;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, httpMethod.hashCode), resourceId.hashCode),
            restApiId.hashCode),
        statusCode.hashCode));
  }
}

class DeleteMethodResponseRequestBuilder
    implements
        Builder<DeleteMethodResponseRequest,
            DeleteMethodResponseRequestBuilder> {
  _$DeleteMethodResponseRequest? _$v;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _statusCode;
  String? get statusCode => _$this._statusCode;
  set statusCode(String? statusCode) => _$this._statusCode = statusCode;

  DeleteMethodResponseRequestBuilder() {
    DeleteMethodResponseRequest._init(this);
  }

  DeleteMethodResponseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpMethod = $v.httpMethod;
      _resourceId = $v.resourceId;
      _restApiId = $v.restApiId;
      _statusCode = $v.statusCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteMethodResponseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteMethodResponseRequest;
  }

  @override
  void update(void Function(DeleteMethodResponseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteMethodResponseRequest build() => _build();

  _$DeleteMethodResponseRequest _build() {
    final _$result = _$v ??
        new _$DeleteMethodResponseRequest._(
            httpMethod: BuiltValueNullFieldError.checkNotNull(
                httpMethod, r'DeleteMethodResponseRequest', 'httpMethod'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'DeleteMethodResponseRequest', 'resourceId'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteMethodResponseRequest', 'restApiId'),
            statusCode: BuiltValueNullFieldError.checkNotNull(
                statusCode, r'DeleteMethodResponseRequest', 'statusCode'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteMethodResponseRequestPayload
    extends DeleteMethodResponseRequestPayload {
  factory _$DeleteMethodResponseRequestPayload(
          [void Function(DeleteMethodResponseRequestPayloadBuilder)?
              updates]) =>
      (new DeleteMethodResponseRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteMethodResponseRequestPayload._() : super._();

  @override
  DeleteMethodResponseRequestPayload rebuild(
          void Function(DeleteMethodResponseRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteMethodResponseRequestPayloadBuilder toBuilder() =>
      new DeleteMethodResponseRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteMethodResponseRequestPayload;
  }

  @override
  int get hashCode {
    return 870332704;
  }
}

class DeleteMethodResponseRequestPayloadBuilder
    implements
        Builder<DeleteMethodResponseRequestPayload,
            DeleteMethodResponseRequestPayloadBuilder> {
  _$DeleteMethodResponseRequestPayload? _$v;

  DeleteMethodResponseRequestPayloadBuilder() {
    DeleteMethodResponseRequestPayload._init(this);
  }

  @override
  void replace(DeleteMethodResponseRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteMethodResponseRequestPayload;
  }

  @override
  void update(
      void Function(DeleteMethodResponseRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteMethodResponseRequestPayload build() => _build();

  _$DeleteMethodResponseRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteMethodResponseRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
