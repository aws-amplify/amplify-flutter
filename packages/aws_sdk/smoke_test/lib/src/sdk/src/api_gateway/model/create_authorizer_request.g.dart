// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_authorizer_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAuthorizerRequest extends CreateAuthorizerRequest {
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
  final String restApiId;
  @override
  final _i3.AuthorizerType type;

  factory _$CreateAuthorizerRequest(
          [void Function(CreateAuthorizerRequestBuilder)? updates]) =>
      (new CreateAuthorizerRequestBuilder()..update(updates))._build();

  _$CreateAuthorizerRequest._(
      {this.authType,
      this.authorizerCredentials,
      this.authorizerResultTtlInSeconds,
      this.authorizerUri,
      this.identitySource,
      this.identityValidationExpression,
      required this.name,
      this.providerArNs,
      required this.restApiId,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'CreateAuthorizerRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'CreateAuthorizerRequest', 'restApiId');
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
        authType == other.authType &&
        authorizerCredentials == other.authorizerCredentials &&
        authorizerResultTtlInSeconds == other.authorizerResultTtlInSeconds &&
        authorizerUri == other.authorizerUri &&
        identitySource == other.identitySource &&
        identityValidationExpression == other.identityValidationExpression &&
        name == other.name &&
        providerArNs == other.providerArNs &&
        restApiId == other.restApiId &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, authType.hashCode),
                                        authorizerCredentials.hashCode),
                                    authorizerResultTtlInSeconds.hashCode),
                                authorizerUri.hashCode),
                            identitySource.hashCode),
                        identityValidationExpression.hashCode),
                    name.hashCode),
                providerArNs.hashCode),
            restApiId.hashCode),
        type.hashCode));
  }
}

class CreateAuthorizerRequestBuilder
    implements
        Builder<CreateAuthorizerRequest, CreateAuthorizerRequestBuilder> {
  _$CreateAuthorizerRequest? _$v;

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

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  _i3.AuthorizerType? _type;
  _i3.AuthorizerType? get type => _$this._type;
  set type(_i3.AuthorizerType? type) => _$this._type = type;

  CreateAuthorizerRequestBuilder() {
    CreateAuthorizerRequest._init(this);
  }

  CreateAuthorizerRequestBuilder get _$this {
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
      _restApiId = $v.restApiId;
      _type = $v.type;
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
              authType: authType,
              authorizerCredentials: authorizerCredentials,
              authorizerResultTtlInSeconds: authorizerResultTtlInSeconds,
              authorizerUri: authorizerUri,
              identitySource: identitySource,
              identityValidationExpression: identityValidationExpression,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'CreateAuthorizerRequest', 'name'),
              providerArNs: _providerArNs?.build(),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'CreateAuthorizerRequest', 'restApiId'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'CreateAuthorizerRequest', 'type'));
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
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, authType.hashCode),
                                    authorizerCredentials.hashCode),
                                authorizerResultTtlInSeconds.hashCode),
                            authorizerUri.hashCode),
                        identitySource.hashCode),
                    identityValidationExpression.hashCode),
                name.hashCode),
            providerArNs.hashCode),
        type.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
