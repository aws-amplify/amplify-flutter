// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.authorizer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Authorizer extends Authorizer {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final _i2.AuthorizerType? type;
  @override
  final _i3.BuiltList<String>? providerArNs;
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

  factory _$Authorizer([void Function(AuthorizerBuilder)? updates]) =>
      (new AuthorizerBuilder()..update(updates))._build();

  _$Authorizer._(
      {this.id,
      this.name,
      this.type,
      this.providerArNs,
      this.authType,
      this.authorizerUri,
      this.authorizerCredentials,
      this.identitySource,
      this.identityValidationExpression,
      this.authorizerResultTtlInSeconds})
      : super._();

  @override
  Authorizer rebuild(void Function(AuthorizerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorizerBuilder toBuilder() => new AuthorizerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Authorizer &&
        id == other.id &&
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
    _$hash = $jc(_$hash, id.hashCode);
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

class AuthorizerBuilder implements Builder<Authorizer, AuthorizerBuilder> {
  _$Authorizer? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i2.AuthorizerType? _type;
  _i2.AuthorizerType? get type => _$this._type;
  set type(_i2.AuthorizerType? type) => _$this._type = type;

  _i3.ListBuilder<String>? _providerArNs;
  _i3.ListBuilder<String> get providerArNs =>
      _$this._providerArNs ??= new _i3.ListBuilder<String>();
  set providerArNs(_i3.ListBuilder<String>? providerArNs) =>
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

  AuthorizerBuilder() {
    Authorizer._init(this);
  }

  AuthorizerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
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
  void replace(Authorizer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Authorizer;
  }

  @override
  void update(void Function(AuthorizerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Authorizer build() => _build();

  _$Authorizer _build() {
    _$Authorizer _$result;
    try {
      _$result = _$v ??
          new _$Authorizer._(
              id: id,
              name: name,
              type: type,
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
            r'Authorizer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
