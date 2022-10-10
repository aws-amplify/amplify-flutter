// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_api_key_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteApiKeyRequest extends DeleteApiKeyRequest {
  @override
  final String apiKey;

  factory _$DeleteApiKeyRequest(
          [void Function(DeleteApiKeyRequestBuilder)? updates]) =>
      (new DeleteApiKeyRequestBuilder()..update(updates))._build();

  _$DeleteApiKeyRequest._({required this.apiKey}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        apiKey, r'DeleteApiKeyRequest', 'apiKey');
  }

  @override
  DeleteApiKeyRequest rebuild(
          void Function(DeleteApiKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteApiKeyRequestBuilder toBuilder() =>
      new DeleteApiKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteApiKeyRequest && apiKey == other.apiKey;
  }

  @override
  int get hashCode {
    return $jf($jc(0, apiKey.hashCode));
  }
}

class DeleteApiKeyRequestBuilder
    implements Builder<DeleteApiKeyRequest, DeleteApiKeyRequestBuilder> {
  _$DeleteApiKeyRequest? _$v;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  DeleteApiKeyRequestBuilder() {
    DeleteApiKeyRequest._init(this);
  }

  DeleteApiKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiKey = $v.apiKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteApiKeyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteApiKeyRequest;
  }

  @override
  void update(void Function(DeleteApiKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteApiKeyRequest build() => _build();

  _$DeleteApiKeyRequest _build() {
    final _$result = _$v ??
        new _$DeleteApiKeyRequest._(
            apiKey: BuiltValueNullFieldError.checkNotNull(
                apiKey, r'DeleteApiKeyRequest', 'apiKey'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteApiKeyRequestPayload extends DeleteApiKeyRequestPayload {
  factory _$DeleteApiKeyRequestPayload(
          [void Function(DeleteApiKeyRequestPayloadBuilder)? updates]) =>
      (new DeleteApiKeyRequestPayloadBuilder()..update(updates))._build();

  _$DeleteApiKeyRequestPayload._() : super._();

  @override
  DeleteApiKeyRequestPayload rebuild(
          void Function(DeleteApiKeyRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteApiKeyRequestPayloadBuilder toBuilder() =>
      new DeleteApiKeyRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteApiKeyRequestPayload;
  }

  @override
  int get hashCode {
    return 410399015;
  }
}

class DeleteApiKeyRequestPayloadBuilder
    implements
        Builder<DeleteApiKeyRequestPayload, DeleteApiKeyRequestPayloadBuilder> {
  _$DeleteApiKeyRequestPayload? _$v;

  DeleteApiKeyRequestPayloadBuilder() {
    DeleteApiKeyRequestPayload._init(this);
  }

  @override
  void replace(DeleteApiKeyRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteApiKeyRequestPayload;
  }

  @override
  void update(void Function(DeleteApiKeyRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteApiKeyRequestPayload build() => _build();

  _$DeleteApiKeyRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteApiKeyRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
