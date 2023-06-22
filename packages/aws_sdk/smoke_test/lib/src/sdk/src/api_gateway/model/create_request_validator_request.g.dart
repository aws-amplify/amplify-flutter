// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_request_validator_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateRequestValidatorRequest extends CreateRequestValidatorRequest {
  @override
  final String restApiId;
  @override
  final String? name;
  @override
  final bool validateRequestBody;
  @override
  final bool validateRequestParameters;

  factory _$CreateRequestValidatorRequest(
          [void Function(CreateRequestValidatorRequestBuilder)? updates]) =>
      (new CreateRequestValidatorRequestBuilder()..update(updates))._build();

  _$CreateRequestValidatorRequest._(
      {required this.restApiId,
      this.name,
      required this.validateRequestBody,
      required this.validateRequestParameters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'CreateRequestValidatorRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(validateRequestBody,
        r'CreateRequestValidatorRequest', 'validateRequestBody');
    BuiltValueNullFieldError.checkNotNull(validateRequestParameters,
        r'CreateRequestValidatorRequest', 'validateRequestParameters');
  }

  @override
  CreateRequestValidatorRequest rebuild(
          void Function(CreateRequestValidatorRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRequestValidatorRequestBuilder toBuilder() =>
      new CreateRequestValidatorRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRequestValidatorRequest &&
        restApiId == other.restApiId &&
        name == other.name &&
        validateRequestBody == other.validateRequestBody &&
        validateRequestParameters == other.validateRequestParameters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, validateRequestBody.hashCode);
    _$hash = $jc(_$hash, validateRequestParameters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateRequestValidatorRequestBuilder
    implements
        Builder<CreateRequestValidatorRequest,
            CreateRequestValidatorRequestBuilder> {
  _$CreateRequestValidatorRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _validateRequestBody;
  bool? get validateRequestBody => _$this._validateRequestBody;
  set validateRequestBody(bool? validateRequestBody) =>
      _$this._validateRequestBody = validateRequestBody;

  bool? _validateRequestParameters;
  bool? get validateRequestParameters => _$this._validateRequestParameters;
  set validateRequestParameters(bool? validateRequestParameters) =>
      _$this._validateRequestParameters = validateRequestParameters;

  CreateRequestValidatorRequestBuilder() {
    CreateRequestValidatorRequest._init(this);
  }

  CreateRequestValidatorRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _name = $v.name;
      _validateRequestBody = $v.validateRequestBody;
      _validateRequestParameters = $v.validateRequestParameters;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRequestValidatorRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateRequestValidatorRequest;
  }

  @override
  void update(void Function(CreateRequestValidatorRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateRequestValidatorRequest build() => _build();

  _$CreateRequestValidatorRequest _build() {
    final _$result = _$v ??
        new _$CreateRequestValidatorRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'CreateRequestValidatorRequest', 'restApiId'),
            name: name,
            validateRequestBody: BuiltValueNullFieldError.checkNotNull(
                validateRequestBody,
                r'CreateRequestValidatorRequest',
                'validateRequestBody'),
            validateRequestParameters: BuiltValueNullFieldError.checkNotNull(
                validateRequestParameters,
                r'CreateRequestValidatorRequest',
                'validateRequestParameters'));
    replace(_$result);
    return _$result;
  }
}

class _$CreateRequestValidatorRequestPayload
    extends CreateRequestValidatorRequestPayload {
  @override
  final String? name;
  @override
  final bool validateRequestBody;
  @override
  final bool validateRequestParameters;

  factory _$CreateRequestValidatorRequestPayload(
          [void Function(CreateRequestValidatorRequestPayloadBuilder)?
              updates]) =>
      (new CreateRequestValidatorRequestPayloadBuilder()..update(updates))
          ._build();

  _$CreateRequestValidatorRequestPayload._(
      {this.name,
      required this.validateRequestBody,
      required this.validateRequestParameters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(validateRequestBody,
        r'CreateRequestValidatorRequestPayload', 'validateRequestBody');
    BuiltValueNullFieldError.checkNotNull(validateRequestParameters,
        r'CreateRequestValidatorRequestPayload', 'validateRequestParameters');
  }

  @override
  CreateRequestValidatorRequestPayload rebuild(
          void Function(CreateRequestValidatorRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRequestValidatorRequestPayloadBuilder toBuilder() =>
      new CreateRequestValidatorRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRequestValidatorRequestPayload &&
        name == other.name &&
        validateRequestBody == other.validateRequestBody &&
        validateRequestParameters == other.validateRequestParameters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, validateRequestBody.hashCode);
    _$hash = $jc(_$hash, validateRequestParameters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateRequestValidatorRequestPayloadBuilder
    implements
        Builder<CreateRequestValidatorRequestPayload,
            CreateRequestValidatorRequestPayloadBuilder> {
  _$CreateRequestValidatorRequestPayload? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _validateRequestBody;
  bool? get validateRequestBody => _$this._validateRequestBody;
  set validateRequestBody(bool? validateRequestBody) =>
      _$this._validateRequestBody = validateRequestBody;

  bool? _validateRequestParameters;
  bool? get validateRequestParameters => _$this._validateRequestParameters;
  set validateRequestParameters(bool? validateRequestParameters) =>
      _$this._validateRequestParameters = validateRequestParameters;

  CreateRequestValidatorRequestPayloadBuilder() {
    CreateRequestValidatorRequestPayload._init(this);
  }

  CreateRequestValidatorRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _validateRequestBody = $v.validateRequestBody;
      _validateRequestParameters = $v.validateRequestParameters;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRequestValidatorRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateRequestValidatorRequestPayload;
  }

  @override
  void update(
      void Function(CreateRequestValidatorRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateRequestValidatorRequestPayload build() => _build();

  _$CreateRequestValidatorRequestPayload _build() {
    final _$result = _$v ??
        new _$CreateRequestValidatorRequestPayload._(
            name: name,
            validateRequestBody: BuiltValueNullFieldError.checkNotNull(
                validateRequestBody,
                r'CreateRequestValidatorRequestPayload',
                'validateRequestBody'),
            validateRequestParameters: BuiltValueNullFieldError.checkNotNull(
                validateRequestParameters,
                r'CreateRequestValidatorRequestPayload',
                'validateRequestParameters'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
