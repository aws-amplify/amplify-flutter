// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_method_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteMethodRequest extends DeleteMethodRequest {
  @override
  final String httpMethod;
  @override
  final String resourceId;
  @override
  final String restApiId;

  factory _$DeleteMethodRequest(
          [void Function(DeleteMethodRequestBuilder)? updates]) =>
      (new DeleteMethodRequestBuilder()..update(updates))._build();

  _$DeleteMethodRequest._(
      {required this.httpMethod,
      required this.resourceId,
      required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'DeleteMethodRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'DeleteMethodRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteMethodRequest', 'restApiId');
  }

  @override
  DeleteMethodRequest rebuild(
          void Function(DeleteMethodRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteMethodRequestBuilder toBuilder() =>
      new DeleteMethodRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteMethodRequest &&
        httpMethod == other.httpMethod &&
        resourceId == other.resourceId &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, httpMethod.hashCode), resourceId.hashCode),
        restApiId.hashCode));
  }
}

class DeleteMethodRequestBuilder
    implements Builder<DeleteMethodRequest, DeleteMethodRequestBuilder> {
  _$DeleteMethodRequest? _$v;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  DeleteMethodRequestBuilder() {
    DeleteMethodRequest._init(this);
  }

  DeleteMethodRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpMethod = $v.httpMethod;
      _resourceId = $v.resourceId;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteMethodRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteMethodRequest;
  }

  @override
  void update(void Function(DeleteMethodRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteMethodRequest build() => _build();

  _$DeleteMethodRequest _build() {
    final _$result = _$v ??
        new _$DeleteMethodRequest._(
            httpMethod: BuiltValueNullFieldError.checkNotNull(
                httpMethod, r'DeleteMethodRequest', 'httpMethod'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'DeleteMethodRequest', 'resourceId'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteMethodRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteMethodRequestPayload extends DeleteMethodRequestPayload {
  factory _$DeleteMethodRequestPayload(
          [void Function(DeleteMethodRequestPayloadBuilder)? updates]) =>
      (new DeleteMethodRequestPayloadBuilder()..update(updates))._build();

  _$DeleteMethodRequestPayload._() : super._();

  @override
  DeleteMethodRequestPayload rebuild(
          void Function(DeleteMethodRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteMethodRequestPayloadBuilder toBuilder() =>
      new DeleteMethodRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteMethodRequestPayload;
  }

  @override
  int get hashCode {
    return 1019570507;
  }
}

class DeleteMethodRequestPayloadBuilder
    implements
        Builder<DeleteMethodRequestPayload, DeleteMethodRequestPayloadBuilder> {
  _$DeleteMethodRequestPayload? _$v;

  DeleteMethodRequestPayloadBuilder() {
    DeleteMethodRequestPayload._init(this);
  }

  @override
  void replace(DeleteMethodRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteMethodRequestPayload;
  }

  @override
  void update(void Function(DeleteMethodRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteMethodRequestPayload build() => _build();

  _$DeleteMethodRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteMethodRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
