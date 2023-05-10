// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_request_validator_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteRequestValidatorRequest extends DeleteRequestValidatorRequest {
  @override
  final String restApiId;
  @override
  final String requestValidatorId;

  factory _$DeleteRequestValidatorRequest(
          [void Function(DeleteRequestValidatorRequestBuilder)? updates]) =>
      (new DeleteRequestValidatorRequestBuilder()..update(updates))._build();

  _$DeleteRequestValidatorRequest._(
      {required this.restApiId, required this.requestValidatorId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteRequestValidatorRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(requestValidatorId,
        r'DeleteRequestValidatorRequest', 'requestValidatorId');
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
        restApiId == other.restApiId &&
        requestValidatorId == other.requestValidatorId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, requestValidatorId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteRequestValidatorRequestBuilder
    implements
        Builder<DeleteRequestValidatorRequest,
            DeleteRequestValidatorRequestBuilder> {
  _$DeleteRequestValidatorRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _requestValidatorId;
  String? get requestValidatorId => _$this._requestValidatorId;
  set requestValidatorId(String? requestValidatorId) =>
      _$this._requestValidatorId = requestValidatorId;

  DeleteRequestValidatorRequestBuilder() {
    DeleteRequestValidatorRequest._init(this);
  }

  DeleteRequestValidatorRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _requestValidatorId = $v.requestValidatorId;
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
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteRequestValidatorRequest', 'restApiId'),
            requestValidatorId: BuiltValueNullFieldError.checkNotNull(
                requestValidatorId,
                r'DeleteRequestValidatorRequest',
                'requestValidatorId'));
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
