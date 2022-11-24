// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_client_certificate_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteClientCertificateRequest extends DeleteClientCertificateRequest {
  @override
  final String clientCertificateId;

  factory _$DeleteClientCertificateRequest(
          [void Function(DeleteClientCertificateRequestBuilder)? updates]) =>
      (new DeleteClientCertificateRequestBuilder()..update(updates))._build();

  _$DeleteClientCertificateRequest._({required this.clientCertificateId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(clientCertificateId,
        r'DeleteClientCertificateRequest', 'clientCertificateId');
  }

  @override
  DeleteClientCertificateRequest rebuild(
          void Function(DeleteClientCertificateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteClientCertificateRequestBuilder toBuilder() =>
      new DeleteClientCertificateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteClientCertificateRequest &&
        clientCertificateId == other.clientCertificateId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, clientCertificateId.hashCode));
  }
}

class DeleteClientCertificateRequestBuilder
    implements
        Builder<DeleteClientCertificateRequest,
            DeleteClientCertificateRequestBuilder> {
  _$DeleteClientCertificateRequest? _$v;

  String? _clientCertificateId;
  String? get clientCertificateId => _$this._clientCertificateId;
  set clientCertificateId(String? clientCertificateId) =>
      _$this._clientCertificateId = clientCertificateId;

  DeleteClientCertificateRequestBuilder() {
    DeleteClientCertificateRequest._init(this);
  }

  DeleteClientCertificateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientCertificateId = $v.clientCertificateId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteClientCertificateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteClientCertificateRequest;
  }

  @override
  void update(void Function(DeleteClientCertificateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteClientCertificateRequest build() => _build();

  _$DeleteClientCertificateRequest _build() {
    final _$result = _$v ??
        new _$DeleteClientCertificateRequest._(
            clientCertificateId: BuiltValueNullFieldError.checkNotNull(
                clientCertificateId,
                r'DeleteClientCertificateRequest',
                'clientCertificateId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteClientCertificateRequestPayload
    extends DeleteClientCertificateRequestPayload {
  factory _$DeleteClientCertificateRequestPayload(
          [void Function(DeleteClientCertificateRequestPayloadBuilder)?
              updates]) =>
      (new DeleteClientCertificateRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteClientCertificateRequestPayload._() : super._();

  @override
  DeleteClientCertificateRequestPayload rebuild(
          void Function(DeleteClientCertificateRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteClientCertificateRequestPayloadBuilder toBuilder() =>
      new DeleteClientCertificateRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteClientCertificateRequestPayload;
  }

  @override
  int get hashCode {
    return 971445795;
  }
}

class DeleteClientCertificateRequestPayloadBuilder
    implements
        Builder<DeleteClientCertificateRequestPayload,
            DeleteClientCertificateRequestPayloadBuilder> {
  _$DeleteClientCertificateRequestPayload? _$v;

  DeleteClientCertificateRequestPayloadBuilder() {
    DeleteClientCertificateRequestPayload._init(this);
  }

  @override
  void replace(DeleteClientCertificateRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteClientCertificateRequestPayload;
  }

  @override
  void update(
      void Function(DeleteClientCertificateRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteClientCertificateRequestPayload build() => _build();

  _$DeleteClientCertificateRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteClientCertificateRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
