// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_authorizer_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAuthorizerRequest extends CreateAuthorizerRequest {
  @override
  final String restApiId;
  @override
  final String name;
  @override
  final _i3.AuthorizerType type;
  @override
  final _i4.BuiltList<String>? providerArNs;
  @override
  final String? authType;
  @override
  final String? authorizerUri;
  @override
  final String? authorizerCredentials;
  @override
  final String? identitySource;
  @override
  final String? identityValidationExpression;
  @override
  final int? authorizerResultTtlInSeconds;

  factory _$CreateAuthorizerRequest(
          [void Function(CreateAuthorizerRequestBuilder)? updates]) =>
      (new CreateAuthorizerRequestBuilder()..update(updates))._build();

  _$CreateAuthorizerRequest._(
      {required this.restApiId,
      required this.name,
      required this.type,
      this.providerArNs,
      this.authType,
      this.authorizerUri,
      this.authorizerCredentials,
      this.identitySource,
      this.identityValidationExpression,
      this.authorizerResultTtlInSeconds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'CreateAuthorizerRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        name, r'CreateAuthorizerRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(
        type, r'CreateAuthorizerRequest', 'type');
  }

  @override
  CreateAuthorizerRequest rebuild(
          void Function(CreateAuthorizerRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAuthorizerRequestBuilder toBuilder() =>
      new CreateAuthorizerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAuthorizerRequest &&
        restApiId == other.restApiId &&
        name == other.name &&
        type == other.type &&
        providerArNs == other.providerArNs &&
        authType == other.authType &&
        authorizerUri == other.authorizerUri &&
        authorizerCredentials == other.authorizerCredentials &&
        identitySource == other.identitySource &&
        identityValidationExpression == other.identityValidationExpression &&
        authorizerResultTtlInSeconds == other.authorizerResultTtlInSeconds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, providerArNs.hashCode);
    _$hash = $jc(_$hash, authType.hashCode);
    _$hash = $jc(_$hash, authorizerUri.hashCode);
    _$hash = $jc(_$hash, authorizerCredentials.hashCode);
    _$hash = $jc(_$hash, identitySource.hashCode);
    _$hash = $jc(_$hash, identityValidationExpression.hashCode);
    _$hash = $jc(_$hash, authorizerResultTtlInSeconds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateAuthorizerRequestBuilder
    implements
        Builder<CreateAuthorizerRequest, CreateAuthorizerRequestBuilder> {
  _$CreateAuthorizerRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i3.AuthorizerType? _type;
  _i3.AuthorizerType? get type => _$this._type;
  set type(_i3.AuthorizerType? type) => _$this._type = type;

  _i4.ListBuilder<String>? _providerArNs;
  _i4.ListBuilder<String> get providerArNs =>
      _$this._providerArNs ??= new _i4.ListBuilder<String>();
  set providerArNs(_i4.ListBuilder<String>? providerArNs) =>
      _$this._providerArNs = providerArNs;

  String? _authType;
  String? get authType => _$this._authType;
  set authType(String? authType) => _$this._authType = authType;

  String? _authorizerUri;
  String? get authorizerUri => _$this._authorizerUri;
  set authorizerUri(String? authorizerUri) =>
      _$this._authorizerUri = authorizerUri;

  String? _authorizerCredentials;
  String? get authorizerCredentials => _$this._authorizerCredentials;
  set authorizerCredentials(String? authorizerCredentials) =>
      _$this._authorizerCredentials = authorizerCredentials;

  String? _identitySource;
  String? get identitySource => _$this._identitySource;
  set identitySource(String? identitySource) =>
      _$this._identitySource = identitySource;

  String? _identityValidationExpression;
  String? get identityValidationExpression =>
      _$this._identityValidationExpression;
  set identityValidationExpression(String? identityValidationExpression) =>
      _$this._identityValidationExpression = identityValidationExpression;

  int? _authorizerResultTtlInSeconds;
  int? get authorizerResultTtlInSeconds => _$this._authorizerResultTtlInSeconds;
  set authorizerResultTtlInSeconds(int? authorizerResultTtlInSeconds) =>
      _$this._authorizerResultTtlInSeconds = authorizerResultTtlInSeconds;

  CreateAuthorizerRequestBuilder() {
    CreateAuthorizerRequest._init(this);
  }

  CreateAuthorizerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _name = $v.name;
      _type = $v.type;
      _providerArNs = $v.providerArNs?.toBuilder();
      _authType = $v.authType;
      _authorizerUri = $v.authorizerUri;
      _authorizerCredentials = $v.authorizerCredentials;
      _identitySource = $v.identitySource;
      _identityValidationExpression = $v.identityValidationExpression;
      _authorizerResultTtlInSeconds = $v.authorizerResultTtlInSeconds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAuthorizerRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateAuthorizerRequest;
  }

  @override
  void update(void Function(CreateAuthorizerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAuthorizerRequest build() => _build();

  _$CreateAuthorizerRequest _build() {
    _$CreateAuthorizerRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateAuthorizerRequest._(
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'CreateAuthorizerRequest', 'restApiId'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'CreateAuthorizerRequest', 'name'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'CreateAuthorizerRequest', 'type'),
              providerArNs: _providerArNs?.build(),
              authType: authType,
              authorizerUri: authorizerUri,
              authorizerCredentials: authorizerCredentials,
              identitySource: identitySource,
              identityValidationExpression: identityValidationExpression,
              authorizerResultTtlInSeconds: authorizerResultTtlInSeconds);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'providerArNs';
        _providerArNs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateAuthorizerRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CreateAuthorizerRequestPayload extends CreateAuthorizerRequestPayload {
  @override
  final String? authType;
  @override
  final String? authorizerCredentials;
  @override
  final int? authorizerResultTtlInSeconds;
  @override
  final String? authorizerUri;
  @override
  final String? identitySource;
  @override
  final String? identityValidationExpression;
  @override
  final String name;
  @override
  final _i4.BuiltList<String>? providerArNs;
  @override
  final _i3.AuthorizerType type;

  factory _$CreateAuthorizerRequestPayload(
          [void Function(CreateAuthorizerRequestPayloadBuilder)? updates]) =>
      (new CreateAuthorizerRequestPayloadBuilder()..update(updates))._build();

  _$CreateAuthorizerRequestPayload._(
      {this.authType,
      this.authorizerCredentials,
      this.authorizerResultTtlInSeconds,
      this.authorizerUri,
      this.identitySource,
      this.identityValidationExpression,
      required this.name,
      this.providerArNs,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'CreateAuthorizerRequestPayload', 'name');
    BuiltValueNullFieldError.checkNotNull(
        type, r'CreateAuthorizerRequestPayload', 'type');
  }

  @override
  CreateAuthorizerRequestPayload rebuild(
          void Function(CreateAuthorizerRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAuthorizerRequestPayloadBuilder toBuilder() =>
      new CreateAuthorizerRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAuthorizerRequestPayload &&
        authType == other.authType &&
        authorizerCredentials == other.authorizerCredentials &&
        authorizerResultTtlInSeconds == other.authorizerResultTtlInSeconds &&
        authorizerUri == other.authorizerUri &&
        identitySource == other.identitySource &&
        identityValidationExpression == other.identityValidationExpression &&
        name == other.name &&
        providerArNs == other.providerArNs &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authType.hashCode);
    _$hash = $jc(_$hash, authorizerCredentials.hashCode);
    _$hash = $jc(_$hash, authorizerResultTtlInSeconds.hashCode);
    _$hash = $jc(_$hash, authorizerUri.hashCode);
    _$hash = $jc(_$hash, identitySource.hashCode);
    _$hash = $jc(_$hash, identityValidationExpression.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, providerArNs.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateAuthorizerRequestPayloadBuilder
    implements
        Builder<CreateAuthorizerRequestPayload,
            CreateAuthorizerRequestPayloadBuilder> {
  _$CreateAuthorizerRequestPayload? _$v;

  String? _authType;
  String? get authType => _$this._authType;
  set authType(String? authType) => _$this._authType = authType;

  String? _authorizerCredentials;
  String? get authorizerCredentials => _$this._authorizerCredentials;
  set authorizerCredentials(String? authorizerCredentials) =>
      _$this._authorizerCredentials = authorizerCredentials;

  int? _authorizerResultTtlInSeconds;
  int? get authorizerResultTtlInSeconds => _$this._authorizerResultTtlInSeconds;
  set authorizerResultTtlInSeconds(int? authorizerResultTtlInSeconds) =>
      _$this._authorizerResultTtlInSeconds = authorizerResultTtlInSeconds;

  String? _authorizerUri;
  String? get authorizerUri => _$this._authorizerUri;
  set authorizerUri(String? authorizerUri) =>
      _$this._authorizerUri = authorizerUri;

  String? _identitySource;
  String? get identitySource => _$this._identitySource;
  set identitySource(String? identitySource) =>
      _$this._identitySource = identitySource;

  String? _identityValidationExpression;
  String? get identityValidationExpression =>
      _$this._identityValidationExpression;
  set identityValidationExpression(String? identityValidationExpression) =>
      _$this._identityValidationExpression = identityValidationExpression;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i4.ListBuilder<String>? _providerArNs;
  _i4.ListBuilder<String> get providerArNs =>
      _$this._providerArNs ??= new _i4.ListBuilder<String>();
  set providerArNs(_i4.ListBuilder<String>? providerArNs) =>
      _$this._providerArNs = providerArNs;

  _i3.AuthorizerType? _type;
  _i3.AuthorizerType? get type => _$this._type;
  set type(_i3.AuthorizerType? type) => _$this._type = type;

  CreateAuthorizerRequestPayloadBuilder() {
    CreateAuthorizerRequestPayload._init(this);
  }

  CreateAuthorizerRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authType = $v.authType;
      _authorizerCredentials = $v.authorizerCredentials;
      _authorizerResultTtlInSeconds = $v.authorizerResultTtlInSeconds;
      _authorizerUri = $v.authorizerUri;
      _identitySource = $v.identitySource;
      _identityValidationExpression = $v.identityValidationExpression;
      _name = $v.name;
      _providerArNs = $v.providerArNs?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAuthorizerRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateAuthorizerRequestPayload;
  }

  @override
  void update(void Function(CreateAuthorizerRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAuthorizerRequestPayload build() => _build();

  _$CreateAuthorizerRequestPayload _build() {
    _$CreateAuthorizerRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$CreateAuthorizerRequestPayload._(
              authType: authType,
              authorizerCredentials: authorizerCredentials,
              authorizerResultTtlInSeconds: authorizerResultTtlInSeconds,
              authorizerUri: authorizerUri,
              identitySource: identitySource,
              identityValidationExpression: identityValidationExpression,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'CreateAuthorizerRequestPayload', 'name'),
              providerArNs: _providerArNs?.build(),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'CreateAuthorizerRequestPayload', 'type'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'providerArNs';
        _providerArNs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateAuthorizerRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
