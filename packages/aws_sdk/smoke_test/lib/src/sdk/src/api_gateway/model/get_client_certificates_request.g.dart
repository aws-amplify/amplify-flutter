// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_client_certificates_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetClientCertificatesRequest extends GetClientCertificatesRequest {
  @override
  final int? limit;
  @override
  final String? position;

  factory _$GetClientCertificatesRequest(
          [void Function(GetClientCertificatesRequestBuilder)? updates]) =>
      (new GetClientCertificatesRequestBuilder()..update(updates))._build();

  _$GetClientCertificatesRequest._({this.limit, this.position}) : super._();

  @override
  GetClientCertificatesRequest rebuild(
          void Function(GetClientCertificatesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetClientCertificatesRequestBuilder toBuilder() =>
      new GetClientCertificatesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetClientCertificatesRequest &&
        limit == other.limit &&
        position == other.position;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, limit.hashCode), position.hashCode));
  }
}

class GetClientCertificatesRequestBuilder
    implements
        Builder<GetClientCertificatesRequest,
            GetClientCertificatesRequestBuilder> {
  _$GetClientCertificatesRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  GetClientCertificatesRequestBuilder() {
    GetClientCertificatesRequest._init(this);
  }

  GetClientCertificatesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetClientCertificatesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetClientCertificatesRequest;
  }

  @override
  void update(void Function(GetClientCertificatesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetClientCertificatesRequest build() => _build();

  _$GetClientCertificatesRequest _build() {
    final _$result = _$v ??
        new _$GetClientCertificatesRequest._(limit: limit, position: position);
    replace(_$result);
    return _$result;
  }
}

class _$GetClientCertificatesRequestPayload
    extends GetClientCertificatesRequestPayload {
  factory _$GetClientCertificatesRequestPayload(
          [void Function(GetClientCertificatesRequestPayloadBuilder)?
              updates]) =>
      (new GetClientCertificatesRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetClientCertificatesRequestPayload._() : super._();

  @override
  GetClientCertificatesRequestPayload rebuild(
          void Function(GetClientCertificatesRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetClientCertificatesRequestPayloadBuilder toBuilder() =>
      new GetClientCertificatesRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetClientCertificatesRequestPayload;
  }

  @override
  int get hashCode {
    return 371209336;
  }
}

class GetClientCertificatesRequestPayloadBuilder
    implements
        Builder<GetClientCertificatesRequestPayload,
            GetClientCertificatesRequestPayloadBuilder> {
  _$GetClientCertificatesRequestPayload? _$v;

  GetClientCertificatesRequestPayloadBuilder() {
    GetClientCertificatesRequestPayload._init(this);
  }

  @override
  void replace(GetClientCertificatesRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetClientCertificatesRequestPayload;
  }

  @override
  void update(
      void Function(GetClientCertificatesRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetClientCertificatesRequestPayload build() => _build();

  _$GetClientCertificatesRequestPayload _build() {
    final _$result = _$v ?? new _$GetClientCertificatesRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
