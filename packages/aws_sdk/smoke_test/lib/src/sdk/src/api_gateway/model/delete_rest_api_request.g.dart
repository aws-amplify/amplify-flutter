// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_rest_api_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteRestApiRequest extends DeleteRestApiRequest {
  @override
  final String restApiId;

  factory _$DeleteRestApiRequest(
          [void Function(DeleteRestApiRequestBuilder)? updates]) =>
      (new DeleteRestApiRequestBuilder()..update(updates))._build();

  _$DeleteRestApiRequest._({required this.restApiId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteRestApiRequest', 'restApiId');
  }

  @override
  DeleteRestApiRequest rebuild(
          void Function(DeleteRestApiRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteRestApiRequestBuilder toBuilder() =>
      new DeleteRestApiRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteRestApiRequest && restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, restApiId.hashCode));
  }
}

class DeleteRestApiRequestBuilder
    implements Builder<DeleteRestApiRequest, DeleteRestApiRequestBuilder> {
  _$DeleteRestApiRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  DeleteRestApiRequestBuilder() {
    DeleteRestApiRequest._init(this);
  }

  DeleteRestApiRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteRestApiRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteRestApiRequest;
  }

  @override
  void update(void Function(DeleteRestApiRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteRestApiRequest build() => _build();

  _$DeleteRestApiRequest _build() {
    final _$result = _$v ??
        new _$DeleteRestApiRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteRestApiRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteRestApiRequestPayload extends DeleteRestApiRequestPayload {
  factory _$DeleteRestApiRequestPayload(
          [void Function(DeleteRestApiRequestPayloadBuilder)? updates]) =>
      (new DeleteRestApiRequestPayloadBuilder()..update(updates))._build();

  _$DeleteRestApiRequestPayload._() : super._();

  @override
  DeleteRestApiRequestPayload rebuild(
          void Function(DeleteRestApiRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteRestApiRequestPayloadBuilder toBuilder() =>
      new DeleteRestApiRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteRestApiRequestPayload;
  }

  @override
  int get hashCode {
    return 800632878;
  }
}

class DeleteRestApiRequestPayloadBuilder
    implements
        Builder<DeleteRestApiRequestPayload,
            DeleteRestApiRequestPayloadBuilder> {
  _$DeleteRestApiRequestPayload? _$v;

  DeleteRestApiRequestPayloadBuilder() {
    DeleteRestApiRequestPayload._init(this);
  }

  @override
  void replace(DeleteRestApiRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteRestApiRequestPayload;
  }

  @override
  void update(void Function(DeleteRestApiRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteRestApiRequestPayload build() => _build();

  _$DeleteRestApiRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteRestApiRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
