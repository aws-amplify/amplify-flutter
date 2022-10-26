// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_resource_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteResourceRequest extends DeleteResourceRequest {
  @override
  final String resourceId;
  @override
  final String restApiId;

  factory _$DeleteResourceRequest(
          [void Function(DeleteResourceRequestBuilder)? updates]) =>
      (new DeleteResourceRequestBuilder()..update(updates))._build();

  _$DeleteResourceRequest._({required this.resourceId, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'DeleteResourceRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteResourceRequest', 'restApiId');
  }

  @override
  DeleteResourceRequest rebuild(
          void Function(DeleteResourceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteResourceRequestBuilder toBuilder() =>
      new DeleteResourceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteResourceRequest &&
        resourceId == other.resourceId &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, resourceId.hashCode), restApiId.hashCode));
  }
}

class DeleteResourceRequestBuilder
    implements Builder<DeleteResourceRequest, DeleteResourceRequestBuilder> {
  _$DeleteResourceRequest? _$v;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  DeleteResourceRequestBuilder() {
    DeleteResourceRequest._init(this);
  }

  DeleteResourceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceId = $v.resourceId;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteResourceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteResourceRequest;
  }

  @override
  void update(void Function(DeleteResourceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteResourceRequest build() => _build();

  _$DeleteResourceRequest _build() {
    final _$result = _$v ??
        new _$DeleteResourceRequest._(
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'DeleteResourceRequest', 'resourceId'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteResourceRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteResourceRequestPayload extends DeleteResourceRequestPayload {
  factory _$DeleteResourceRequestPayload(
          [void Function(DeleteResourceRequestPayloadBuilder)? updates]) =>
      (new DeleteResourceRequestPayloadBuilder()..update(updates))._build();

  _$DeleteResourceRequestPayload._() : super._();

  @override
  DeleteResourceRequestPayload rebuild(
          void Function(DeleteResourceRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteResourceRequestPayloadBuilder toBuilder() =>
      new DeleteResourceRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteResourceRequestPayload;
  }

  @override
  int get hashCode {
    return 1008778010;
  }
}

class DeleteResourceRequestPayloadBuilder
    implements
        Builder<DeleteResourceRequestPayload,
            DeleteResourceRequestPayloadBuilder> {
  _$DeleteResourceRequestPayload? _$v;

  DeleteResourceRequestPayloadBuilder() {
    DeleteResourceRequestPayload._init(this);
  }

  @override
  void replace(DeleteResourceRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteResourceRequestPayload;
  }

  @override
  void update(void Function(DeleteResourceRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteResourceRequestPayload build() => _build();

  _$DeleteResourceRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteResourceRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
