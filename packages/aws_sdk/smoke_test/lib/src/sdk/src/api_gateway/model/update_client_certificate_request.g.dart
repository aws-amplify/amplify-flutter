// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_client_certificate_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateClientCertificateRequest extends UpdateClientCertificateRequest {
  @override
  final String clientCertificateId;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateClientCertificateRequest(
          [void Function(UpdateClientCertificateRequestBuilder)? updates]) =>
      (new UpdateClientCertificateRequestBuilder()..update(updates))._build();

  _$UpdateClientCertificateRequest._(
      {required this.clientCertificateId, this.patchOperations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(clientCertificateId,
        r'UpdateClientCertificateRequest', 'clientCertificateId');
  }

  @override
  UpdateClientCertificateRequest rebuild(
          void Function(UpdateClientCertificateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateClientCertificateRequestBuilder toBuilder() =>
      new UpdateClientCertificateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateClientCertificateRequest &&
        clientCertificateId == other.clientCertificateId &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientCertificateId.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateClientCertificateRequestBuilder
    implements
        Builder<UpdateClientCertificateRequest,
            UpdateClientCertificateRequestBuilder> {
  _$UpdateClientCertificateRequest? _$v;

  String? _clientCertificateId;
  String? get clientCertificateId => _$this._clientCertificateId;
  set clientCertificateId(String? clientCertificateId) =>
      _$this._clientCertificateId = clientCertificateId;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateClientCertificateRequestBuilder() {
    UpdateClientCertificateRequest._init(this);
  }

  UpdateClientCertificateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientCertificateId = $v.clientCertificateId;
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateClientCertificateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateClientCertificateRequest;
  }

  @override
  void update(void Function(UpdateClientCertificateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateClientCertificateRequest build() => _build();

  _$UpdateClientCertificateRequest _build() {
    _$UpdateClientCertificateRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateClientCertificateRequest._(
              clientCertificateId: BuiltValueNullFieldError.checkNotNull(
                  clientCertificateId,
                  r'UpdateClientCertificateRequest',
                  'clientCertificateId'),
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateClientCertificateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateClientCertificateRequestPayload
    extends UpdateClientCertificateRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateClientCertificateRequestPayload(
          [void Function(UpdateClientCertificateRequestPayloadBuilder)?
              updates]) =>
      (new UpdateClientCertificateRequestPayloadBuilder()..update(updates))
          ._build();

  _$UpdateClientCertificateRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateClientCertificateRequestPayload rebuild(
          void Function(UpdateClientCertificateRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateClientCertificateRequestPayloadBuilder toBuilder() =>
      new UpdateClientCertificateRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateClientCertificateRequestPayload &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateClientCertificateRequestPayloadBuilder
    implements
        Builder<UpdateClientCertificateRequestPayload,
            UpdateClientCertificateRequestPayloadBuilder> {
  _$UpdateClientCertificateRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateClientCertificateRequestPayloadBuilder() {
    UpdateClientCertificateRequestPayload._init(this);
  }

  UpdateClientCertificateRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateClientCertificateRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateClientCertificateRequestPayload;
  }

  @override
  void update(
      void Function(UpdateClientCertificateRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateClientCertificateRequestPayload build() => _build();

  _$UpdateClientCertificateRequestPayload _build() {
    _$UpdateClientCertificateRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateClientCertificateRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateClientCertificateRequestPayload',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
