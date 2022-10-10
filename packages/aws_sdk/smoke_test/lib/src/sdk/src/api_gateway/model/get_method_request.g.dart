// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_method_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetMethodRequest extends GetMethodRequest {
  @override
  final String httpMethod;
  @override
  final String resourceId;
  @override
  final String restApiId;

  factory _$GetMethodRequest(
          [void Function(GetMethodRequestBuilder)? updates]) =>
      (new GetMethodRequestBuilder()..update(updates))._build();

  _$GetMethodRequest._(
      {required this.httpMethod,
      required this.resourceId,
      required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'GetMethodRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'GetMethodRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetMethodRequest', 'restApiId');
  }

  @override
  GetMethodRequest rebuild(void Function(GetMethodRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMethodRequestBuilder toBuilder() =>
      new GetMethodRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMethodRequest &&
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

class GetMethodRequestBuilder
    implements Builder<GetMethodRequest, GetMethodRequestBuilder> {
  _$GetMethodRequest? _$v;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetMethodRequestBuilder() {
    GetMethodRequest._init(this);
  }

  GetMethodRequestBuilder get _$this {
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
  void replace(GetMethodRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetMethodRequest;
  }

  @override
  void update(void Function(GetMethodRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMethodRequest build() => _build();

  _$GetMethodRequest _build() {
    final _$result = _$v ??
        new _$GetMethodRequest._(
            httpMethod: BuiltValueNullFieldError.checkNotNull(
                httpMethod, r'GetMethodRequest', 'httpMethod'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'GetMethodRequest', 'resourceId'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetMethodRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetMethodRequestPayload extends GetMethodRequestPayload {
  factory _$GetMethodRequestPayload(
          [void Function(GetMethodRequestPayloadBuilder)? updates]) =>
      (new GetMethodRequestPayloadBuilder()..update(updates))._build();

  _$GetMethodRequestPayload._() : super._();

  @override
  GetMethodRequestPayload rebuild(
          void Function(GetMethodRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMethodRequestPayloadBuilder toBuilder() =>
      new GetMethodRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMethodRequestPayload;
  }

  @override
  int get hashCode {
    return 28016288;
  }
}

class GetMethodRequestPayloadBuilder
    implements
        Builder<GetMethodRequestPayload, GetMethodRequestPayloadBuilder> {
  _$GetMethodRequestPayload? _$v;

  GetMethodRequestPayloadBuilder() {
    GetMethodRequestPayload._init(this);
  }

  @override
  void replace(GetMethodRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetMethodRequestPayload;
  }

  @override
  void update(void Function(GetMethodRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMethodRequestPayload build() => _build();

  _$GetMethodRequestPayload _build() {
    final _$result = _$v ?? new _$GetMethodRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
