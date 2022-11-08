// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_request_validator_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRequestValidatorRequest extends GetRequestValidatorRequest {
  @override
  final String requestValidatorId;
  @override
  final String restApiId;

  factory _$GetRequestValidatorRequest(
          [void Function(GetRequestValidatorRequestBuilder)? updates]) =>
      (new GetRequestValidatorRequestBuilder()..update(updates))._build();

  _$GetRequestValidatorRequest._(
      {required this.requestValidatorId, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(requestValidatorId,
        r'GetRequestValidatorRequest', 'requestValidatorId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetRequestValidatorRequest', 'restApiId');
  }

  @override
  GetRequestValidatorRequest rebuild(
          void Function(GetRequestValidatorRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRequestValidatorRequestBuilder toBuilder() =>
      new GetRequestValidatorRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRequestValidatorRequest &&
        requestValidatorId == other.requestValidatorId &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, requestValidatorId.hashCode), restApiId.hashCode));
  }
}

class GetRequestValidatorRequestBuilder
    implements
        Builder<GetRequestValidatorRequest, GetRequestValidatorRequestBuilder> {
  _$GetRequestValidatorRequest? _$v;

  String? _requestValidatorId;
  String? get requestValidatorId => _$this._requestValidatorId;
  set requestValidatorId(String? requestValidatorId) =>
      _$this._requestValidatorId = requestValidatorId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetRequestValidatorRequestBuilder() {
    GetRequestValidatorRequest._init(this);
  }

  GetRequestValidatorRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestValidatorId = $v.requestValidatorId;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRequestValidatorRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRequestValidatorRequest;
  }

  @override
  void update(void Function(GetRequestValidatorRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRequestValidatorRequest build() => _build();

  _$GetRequestValidatorRequest _build() {
    final _$result = _$v ??
        new _$GetRequestValidatorRequest._(
            requestValidatorId: BuiltValueNullFieldError.checkNotNull(
                requestValidatorId,
                r'GetRequestValidatorRequest',
                'requestValidatorId'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetRequestValidatorRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetRequestValidatorRequestPayload
    extends GetRequestValidatorRequestPayload {
  factory _$GetRequestValidatorRequestPayload(
          [void Function(GetRequestValidatorRequestPayloadBuilder)? updates]) =>
      (new GetRequestValidatorRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetRequestValidatorRequestPayload._() : super._();

  @override
  GetRequestValidatorRequestPayload rebuild(
          void Function(GetRequestValidatorRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRequestValidatorRequestPayloadBuilder toBuilder() =>
      new GetRequestValidatorRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRequestValidatorRequestPayload;
  }

  @override
  int get hashCode {
    return 996646658;
  }
}

class GetRequestValidatorRequestPayloadBuilder
    implements
        Builder<GetRequestValidatorRequestPayload,
            GetRequestValidatorRequestPayloadBuilder> {
  _$GetRequestValidatorRequestPayload? _$v;

  GetRequestValidatorRequestPayloadBuilder() {
    GetRequestValidatorRequestPayload._init(this);
  }

  @override
  void replace(GetRequestValidatorRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRequestValidatorRequestPayload;
  }

  @override
  void update(
      void Function(GetRequestValidatorRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRequestValidatorRequestPayload build() => _build();

  _$GetRequestValidatorRequestPayload _build() {
    final _$result = _$v ?? new _$GetRequestValidatorRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
