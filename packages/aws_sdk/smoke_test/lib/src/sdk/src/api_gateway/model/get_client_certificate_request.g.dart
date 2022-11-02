// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_client_certificate_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetClientCertificateRequest extends GetClientCertificateRequest {
  @override
  final String clientCertificateId;

  factory _$GetClientCertificateRequest(
          [void Function(GetClientCertificateRequestBuilder)? updates]) =>
      (new GetClientCertificateRequestBuilder()..update(updates))._build();

  _$GetClientCertificateRequest._({required this.clientCertificateId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(clientCertificateId,
        r'GetClientCertificateRequest', 'clientCertificateId');
  }

  @override
  GetClientCertificateRequest rebuild(
          void Function(GetClientCertificateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetClientCertificateRequestBuilder toBuilder() =>
      new GetClientCertificateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetClientCertificateRequest &&
        clientCertificateId == other.clientCertificateId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, clientCertificateId.hashCode));
  }
}

class GetClientCertificateRequestBuilder
    implements
        Builder<GetClientCertificateRequest,
            GetClientCertificateRequestBuilder> {
  _$GetClientCertificateRequest? _$v;

  String? _clientCertificateId;
  String? get clientCertificateId => _$this._clientCertificateId;
  set clientCertificateId(String? clientCertificateId) =>
      _$this._clientCertificateId = clientCertificateId;

  GetClientCertificateRequestBuilder() {
    GetClientCertificateRequest._init(this);
  }

  GetClientCertificateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientCertificateId = $v.clientCertificateId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetClientCertificateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetClientCertificateRequest;
  }

  @override
  void update(void Function(GetClientCertificateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetClientCertificateRequest build() => _build();

  _$GetClientCertificateRequest _build() {
    final _$result = _$v ??
        new _$GetClientCertificateRequest._(
            clientCertificateId: BuiltValueNullFieldError.checkNotNull(
                clientCertificateId,
                r'GetClientCertificateRequest',
                'clientCertificateId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetClientCertificateRequestPayload
    extends GetClientCertificateRequestPayload {
  factory _$GetClientCertificateRequestPayload(
          [void Function(GetClientCertificateRequestPayloadBuilder)?
              updates]) =>
      (new GetClientCertificateRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetClientCertificateRequestPayload._() : super._();

  @override
  GetClientCertificateRequestPayload rebuild(
          void Function(GetClientCertificateRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetClientCertificateRequestPayloadBuilder toBuilder() =>
      new GetClientCertificateRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetClientCertificateRequestPayload;
  }

  @override
  int get hashCode {
    return 624219221;
  }
}

class GetClientCertificateRequestPayloadBuilder
    implements
        Builder<GetClientCertificateRequestPayload,
            GetClientCertificateRequestPayloadBuilder> {
  _$GetClientCertificateRequestPayload? _$v;

  GetClientCertificateRequestPayloadBuilder() {
    GetClientCertificateRequestPayload._init(this);
  }

  @override
  void replace(GetClientCertificateRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetClientCertificateRequestPayload;
  }

  @override
  void update(
      void Function(GetClientCertificateRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetClientCertificateRequestPayload build() => _build();

  _$GetClientCertificateRequestPayload _build() {
    final _$result = _$v ?? new _$GetClientCertificateRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
