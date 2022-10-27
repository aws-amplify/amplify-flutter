// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.authorizer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Authorizer extends Authorizer {
  @override
  final String? authType;
  @override
  final String? authorizerCredentials;
  @override
  final int? authorizerResultTtlInSeconds;
  @override
  final String? authorizerUri;
  @override
  final String? id;
  @override
  final String? identitySource;
  @override
  final String? identityValidationExpression;
  @override
  final String? name;
  @override
  final _i3.BuiltList<String>? providerArNs;
  @override
  final _i2.AuthorizerType? type;

  factory _$Authorizer([void Function(AuthorizerBuilder)? updates]) =>
      (new AuthorizerBuilder()..update(updates))._build();

  _$Authorizer._(
      {this.authType,
      this.authorizerCredentials,
      this.authorizerResultTtlInSeconds,
      this.authorizerUri,
      this.id,
      this.identitySource,
      this.identityValidationExpression,
      this.name,
      this.providerArNs,
      this.type})
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
        authType == other.authType &&
        authorizerCredentials == other.authorizerCredentials &&
        authorizerResultTtlInSeconds == other.authorizerResultTtlInSeconds &&
        authorizerUri == other.authorizerUri &&
        id == other.id &&
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
                                $jc(
                                    $jc($jc(0, authType.hashCode),
                                        authorizerCredentials.hashCode),
                                    authorizerResultTtlInSeconds.hashCode),
                                authorizerUri.hashCode),
                            id.hashCode),
                        identitySource.hashCode),
                    identityValidationExpression.hashCode),
                name.hashCode),
            providerArNs.hashCode),
        type.hashCode));
  }
}

class AuthorizerBuilder implements Builder<Authorizer, AuthorizerBuilder> {
  _$Authorizer? _$v;

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

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  _i3.ListBuilder<String>? _providerArNs;
  _i3.ListBuilder<String> get providerArNs =>
      _$this._providerArNs ??= new _i3.ListBuilder<String>();
  set providerArNs(_i3.ListBuilder<String>? providerArNs) =>
      _$this._providerArNs = providerArNs;

  _i2.AuthorizerType? _type;
  _i2.AuthorizerType? get type => _$this._type;
  set type(_i2.AuthorizerType? type) => _$this._type = type;

  AuthorizerBuilder() {
    Authorizer._init(this);
  }

  AuthorizerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authType = $v.authType;
      _authorizerCredentials = $v.authorizerCredentials;
      _authorizerResultTtlInSeconds = $v.authorizerResultTtlInSeconds;
      _authorizerUri = $v.authorizerUri;
      _id = $v.id;
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
              authType: authType,
              authorizerCredentials: authorizerCredentials,
              authorizerResultTtlInSeconds: authorizerResultTtlInSeconds,
              authorizerUri: authorizerUri,
              id: id,
              identitySource: identitySource,
              identityValidationExpression: identityValidationExpression,
              name: name,
              providerArNs: _providerArNs?.build(),
              type: type);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
